//
//  ch09GestureModifier.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09GestureModifier: View {
    var body: some View {
        //hightPriorityGesture
//        let tapGesture = TapGesture().onEnded {
//            print("사각형 탭")
//        }
//        return VStack {
//            Rectangle().frame(width: 100, height: 100)
//
//            Circle().frame(width: 100, height: 100)
//                .onTapGesture {
//                    print("원형 탭")
//            }
//        }.highPriorityGesture(tapGesture)
//        //.gesture(tapGesture)
        
        //simultaneousGesture
        let longPressGesture = LongPressGesture()
            .onChanged { _ in print("LongPress began") }
            .onEnded { _ in print("LongPressed!") }
        let tapGesture = TapGesture().onEnded {
            print("Tapped!")
        }
        return Circle().gesture(longPressGesture).simultaneousGesture(tapGesture)
    }
}

struct ch09GestureModifier_Previews: PreviewProvider {
    static var previews: some View {
        ch09GestureModifier()
    }
}
