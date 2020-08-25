//
//  ch08MagnificationGesture.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09MagnificationGesture: View {
    @GestureState private var scale: CGFloat = 1    // 제스처 사용중 변화하는 값 임시 저장
    @State private var latestScale: CGFloat = 1     // 제스처 마지막 상태 저장
    
    var body: some View {
        let magnificationiGesture = MagnificationGesture()
            .updating($scale) { (value, state, _) in
                state = value
        }.onEnded { scale in
            self.latestScale *= scale       // 제스처 종료 시 최종 배율 계산해 저장
        }
        
        return Circle()
            .scaleEffect(latestScale * scale)   // 마지막으로 적용된 배율과 현재 변화하는 배율의 곱
            .gesture(magnificationiGesture)
    }
}

struct ch08MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        ch09MagnificationGesture()
    }
}
