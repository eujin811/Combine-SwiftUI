//
//  ch08AnimationControl.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08AnimationControl: View {
    @State private var blur4: Bool = false
    @State private var reduction4: Bool = false
    var body: some View {
        VStack {
            // withAnimation
            Image("cat")
                .blur(radius: blur4 ? 5 : 0)
                .animation(Animation.default.speed(2).repeatCount(5, autoreverses: true))
                .scaleEffect(reduction4 ? 0.7 : 1)
                .animation(Animation.default.delay(1))
                .onTapGesture {
                    self.blur4.toggle()
                    self.reduction4.toggle()
                    
            }
            
            
            
        }
    }
}
    
    struct ch08AnimationControl_Previews: PreviewProvider {
        static var previews: some View {
            ch08AnimationControl()
        }
}
