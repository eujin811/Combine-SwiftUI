//
//  ch08AnimationSpring.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08AnimationSpring: View {
    @State private var blur3: Bool = false
    @State private var reduction3: Bool = false
    var body: some View {
        VStack {
            Image("cat")
                .blur(radius: blur3 ? 5 : 0)
                .scaleEffect(reduction3 ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.spring(response: 0.55, dampingFraction: 0.825, blendDuration: 0)) {
                        self.blur3.toggle()
                        self.reduction3.toggle()
                    }
            }
            Image("cat")
                .blur(radius: blur3 ? 5 : 0)
                .scaleEffect(reduction3 ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.spring(response: 0.55, dampingFraction: 0.225, blendDuration: 0)) {
                        self.blur3.toggle()
                        self.reduction3.toggle()
                    }
            }
//            Image("cat")
//                .blur(radius: blur3 ? 5 : 0)
//                .scaleEffect(reduction3 ? 0.7 : 1)
//                .onTapGesture {
//                    withAnimation(.spring(response: 0.55, dampingFraction: 2, blendDuration: 0)) {
//                        self.blur3.toggle()
//                        self.reduction3.toggle()
//                    }
//            }
//            Image("cat")
//                .blur(radius: blur3 ? 5 : 0)
//                .scaleEffect(reduction3 ? 0.7 : 1)
//                .onTapGesture {
//                    withAnimation(.spring(response: 0.55, dampingFraction: 0, blendDuration: 0)) {
//                        self.blur3.toggle()
//                        self.reduction3.toggle()
//                    }
//            }
            
            Image("cat")
                .blur(radius: blur3 ? 5 : 0)
                .scaleEffect(reduction3 ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.15, dampingFraction: 0.86, blendDuration: 0.25)) {
                        self.blur3.toggle()
                        self.reduction3.toggle()
                    }
            }
            
            Image("cat")
                .blur(radius: blur3 ? 5 : 0)
                .scaleEffect(reduction3 ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.15, dampingFraction: 0.86, blendDuration: 0.25)) {
                        self.blur3.toggle()
                        self.reduction3.toggle()
                    }
            }
            
            Image("cat")
                .blur(radius: blur3 ? 5 : 0)
                .scaleEffect(reduction3 ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 10, initialVelocity: 0)) {
                        self.blur3.toggle()
                        self.reduction3.toggle()
                    }
            }
            
        }
    }
}

struct ch08AnimationSpring_Previews: PreviewProvider {
    static var previews: some View {
        ch08AnimationSpring()
    }
}
