//
//  ch09RotationGesture.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09RotationGesture: View {
    @GestureState private var angle: Angle = .zero
    var body: some View {
        let rotationGesture = RotationGesture()
            .updating($angle) { (value, state, _) in
                state = value
        }
        
        return Capsule()
            .rotationEffect(angle)
            .gesture(rotationGesture)
    }
}

struct ch09RotationGesture_Previews: PreviewProvider {
    static var previews: some View {
        ch09RotationGesture()
    }
}
