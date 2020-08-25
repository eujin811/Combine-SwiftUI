//
//  ch08CustomAnimation.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08CustomAnimation: View {
    @State private var trimmedTo: CGFloat = 1.0
    @State private var lineWidth: CGFloat = 7.0
    @State private var isHidden = false

    var body: some View {
        VStack {
            MyCircle(trimmedTo: trimmedTo, lineWidth: lineWidth)
                .padding()
                .animation(.easeInOut(duration: 1.5))
            Button(action: {
                self.trimmedTo = self.isHidden ? 1.0 : 0
                self.lineWidth = self.isHidden ? 7 : 1
                self.isHidden.toggle()
            }) {
                Text("Animate!").font(.title)
            }
            .padding()
            
        }
    }
}

struct ch08CustomAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ch08CustomAnimation()
    }
}


//MARK: CustomAnimation
struct MyCircle: Shape {
    var trimmedTo: CGFloat
    var lineWidth: CGFloat
    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(trimmedTo, lineWidth) }
        set {
            trimmedTo = newValue.first
            lineWidth = newValue.second
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //주어진 공간에서의 중앙위치
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = rect.width / 2     // 원 반지름
        let start = Angle(radians: .pi / -2)        //원 그리기 시작시점
        let end = Angle(radians: .pi / 2*3)     // 원 그리기 끝나는 시점
        
        
        //addArc: 원이나 호를 그리는 데 사용되는 메서드, 반지름 길이만큼 거리에 시작 지점부터 종료 지점까지 돌려서 그린다. (clockwice 원그리는 방향)
        //trimmedPath: 0.0~1.0 사이의 값 지정해 Path의 일부분만 그릴수 있도록 하는 메서드(0은 전체 경로의 시작지점, 1.0 종료 지점)
        //strokedPath: lineWidth 값 만큼 테두리 따라 그린다.

        
        path.addArc(center: center, radius: radius / 4, startAngle: start, endAngle: end, clockwise: false)
        path.addArc(center: center, radius: radius / 2, startAngle: start, endAngle: end, clockwise: false)
        path.addArc(center: center, radius: radius, startAngle: start, endAngle: end, clockwise: false)
        
        return path
            .trimmedPath(from: 0.0, to: trimmedTo).strokedPath(.init(lineWidth: lineWidth))
        
    }
    
    
}
