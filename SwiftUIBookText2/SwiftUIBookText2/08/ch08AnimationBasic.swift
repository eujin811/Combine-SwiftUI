//
//  ch08AnimationBasic.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08AnimationBasic: View {
    @State private var blur2: Bool = false
    @State private var reduction2: Bool = false
    var body: some View {
         VStack {
                   // withAnimation
                   Image("cat")
                       .blur(radius: blur2 ? 5 : 0)
                       .scaleEffect(reduction2 ? 0.7 : 1)
                       .onTapGesture {
                           withAnimation(.easeInOut) {
                               self.blur2.toggle()  //=true
                               self.reduction2.toggle()
                           }
                   }
                   
                   Image("cat")
                       .blur(radius: blur2 ? 5 : 0)
                       .scaleEffect(reduction2 ? 0.7 : 1)
                       .onTapGesture {
                           withAnimation(.easeIn) {
                               self.blur2.toggle()
                               self.reduction2.toggle()
                           }
                   }
                   
                   Image("cat")
                       .blur(radius: blur2 ? 5 : 0)
                       .scaleEffect(reduction2 ? 0.7 : 1)
                       .onTapGesture {
                           withAnimation(.easeOut) {
                               self.blur2.toggle()
                               self.reduction2.toggle()
                           }
                   }
                   
                   Image("cat")
                       .blur(radius: blur2 ? 5 : 0)
                       .scaleEffect(reduction2 ? 0.7 : 1)
                       .onTapGesture {
                           withAnimation(.linear) {
                               self.blur2.toggle()
                               self.reduction2.toggle()
                           }
                   }
                   
                   Image("cat")
                       .blur(radius: blur2 ? 5 : 0)
                       .scaleEffect(reduction2 ? 0.7 : 1)
                       .onTapGesture {
                           withAnimation(.timingCurve(0.46, 0.18, 0.15, 0.94)) {
                               self.blur2.toggle()
                               self.reduction2.toggle()
                           }
                   }
                   
               }
    }
}

struct ch08AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        ch08AnimationBasic()
    }
}
