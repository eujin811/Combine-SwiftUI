//
//  ch08Gesture.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09Gesture: View {
    var body: some View {
//        HStack {
//            Circle().onLongPressGesture {
//                print("LongPressed")
//            }
//
//            Circle().onLongPressGesture(
//                minimumDuration: 0.5,       // 인식필요시간.
//                maximumDistance: 10,        // 처음 누른 위치에서 지정한 거리 이상 떨어지면 인식 실패로 간주
//                pressing: { pressing in print(pressing) },
//                perform: { print("Recognized") }
//            )
//
//
//        }
        let longPressGesture = LongPressGesture()
            .onChanged({ pressing in print(pressing) }) // 뷰 눌렀을 때 호출
            .onEnded({ _ in print("Long Pressed!") })   // 길게 누른 것으로 인색했을 때 호출
        
        return Circle().gesture(longPressGesture)
    }
}

struct ch08Gesture_Previews: PreviewProvider {
    static var previews: some View {
        ch09Gesture()
    }
}
