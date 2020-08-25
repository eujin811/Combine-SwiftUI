//
//  ch09GestureMask.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09GestureMask: View {
    var body: some View {
        let longPressGesture = LongPressGesture()
            .onChanged { _ in print("LongPress began!") }
            .onEnded { _ in print("LongPressed!") }
        
        let tapGesture = TapGesture().onEnded {
            print("Tapped!")
        }
        
        return VStack {
            Circle().gesture(longPressGesture)
        }.simultaneousGesture(tapGesture, including: .all)
    }
}

struct ch09GestureMask_Previews: PreviewProvider {
    static var previews: some View {
        ch09GestureMask()
    }
}
