//
//  ch04GeometryReader.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/30.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI
 
struct ch03GeometryReader: View {
    var body: some View {
        // 자식뷰 1개 / 정렬: 센터
//        GeometryReader1()
 
        // 자식뷰 여러개 / 정렬: 좌측 상단
        //GeometryReader2()
       
        // GeometryProxy
        // 레이아웃 정보 자식뷰에게!
        GeometryProxyEX()
//        GeometryProxyFrame()
    }
}

struct ch04GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        ch03GeometryReader().previewDisplayName("GeometryReader")
    }
}

// GeometryReader

struct GeometryReader1: View {
    var body: some View {
        GeometryReader { _ in
            Circle().fill(Color.purple).frame(width: 200, height: 200).overlay(Text("Center").font(.title))
        }.background(Color.gray)
    }
}

struct GeometryReader2: View {
    var body: some View {
        GeometryReader { _ in
            Circle().fill(Color.blue).frame(width: 350, height: 350)
            Circle().fill(Color.green).frame(width: 250, height: 250)
            Circle().fill(Color.purple).frame(width: 150, height: 150)
        }.background(Color.gray)
    }
}

// GeometryProxy
struct GeometryProxyEX: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Geometry Reader")             // 안전선 내부에
                .font(.largeTitle)
                .bold()
                // 뷰의 센터 지정
                .position(x: geometry.size.width / 2, y: geometry.safeAreaInsets.top)
            
            VStack {
                Text("Size").bold()
                Text("width: \(Int(geometry.size.width))")
                Text("height: \(Int(geometry.size.height))")
            }.position(x: geometry.size.width / 2, y: geometry.size.height / 2.5)
            
            VStack {
                Text("SafeAreaInsets").bold()
                Text("top: \(Int(geometry.safeAreaInsets.top))")
                Text("bottom: \(Int(geometry.safeAreaInsets.bottom))")
            }.position(x: geometry.size.width / 2, y: geometry.size.height / 1.4)

        }
        .font(.title)
        .frame(height: 500)
        .border(Color.green, width: 5)
    }
}



// MARK: GeometryProxyFrame
struct GeometryProxyFrame: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.yellow).frame(width: 30)
            
            VStack {
                Rectangle().fill(Color.blue).frame(height: 100)
                
                
                GeometryReader {
                    self.contents(geometry: $0)

                }
                
            }.coordinateSpace(name: "VStackCS")
            
            
        }.coordinateSpace(name: "HStackCS")
    }
    
    
    func contents(geometry g: GeometryProxy) -> some View {
        VStack {
            Text("Local").bold().onTapGesture {
                print("Geometry \n",g,"--------------------")
            }
            
            Text(stringFormat(for: g.frame(in: .local).origin)) //지오메트리 리더의 bounds를 기준으로 한 좌표
            Text("Global").bold()
            Text(stringFormat(for: g.frame(in: .global).origin))
            
            Text("Named VStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("VStackCS")).origin)).padding(.bottom)
            
            Text("Named HStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("HStackCS")).origin))
            
        }
    }
    
    // 좌표출력 메소드
    func stringFormat(for point: CGPoint) -> String {
        String(format: "(x: %.f, y: %.f)", arguments: [point.x, point.y])
    }
}
