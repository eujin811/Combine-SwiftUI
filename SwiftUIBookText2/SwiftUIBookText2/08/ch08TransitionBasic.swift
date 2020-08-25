//
//  ch08TransitionBasic.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08TransitionBasic: View {
    @State private var showText = false
    
    var body: some View {
        VStack {
            if showText {
                Text("Transition Scale")
                    .font(.largeTitle)
                    .padding()
                    .transition(.scale)
                Text("Transition Slide")
                    .font(.largeTitle)
                    .padding()
                    .transition(.slide)
                Text("Transition trailing")
                    .font(.largeTitle)
                    .padding()
                    .transition(.move(edge: .top))
                Text("Transition offset")
                    .font(.largeTitle)
                    .padding()
                    .transition(.offset(x: -125, y: -125))
            }
            Button("Display Text On / Off") {
                withAnimation {
                    self.showText.toggle()
                }
            }.font(.title)
            
        }
    }
}

struct ch08TransitionBasic_Previews: PreviewProvider {
    static var previews: some View {
        ch08TransitionBasic()
    }
}
