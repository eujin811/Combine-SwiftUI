//
//  ch08TransitionCompose.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08TransitionCompose: View {
    @State private var showView = false
    
    var body: some View {
        VStack {
            if showView {
                //MARK: combined
//                Text("Transition Combined")
//                    .font(.largeTitle)
//                    .padding()
//                    .transition(AnyTransition.slide.combined(with: .scale))
                
                
//                Text("Transition asymmetric").transition(myTransition)
                
                //MARK: modifier
                Text("Transition Modifier")
                    .transition(.customScale)
                    //.transition(.modifier(
//                        active: CustomScaleModifier(scale: 0),
//                        identity: CustomScaleModifier(scale: 1)))
                
            }
            Button("Display Text On / Off") {
                withAnimation {
                    self.showView.toggle()
                }
            }.font(.title)
            
            
            
            
        }
    }
    
    
    //MARK: asymmetric
    var myTransition: AnyTransition {
        let insertion = AnyTransition.offset(x: 300, y: -300)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .leading)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


struct ch08TransitionCompose_Previews: PreviewProvider {
    static var previews: some View {
        ch08TransitionCompose()
    }
}

//MARK: Modifier
extension AnyTransition {
    static var customScale: AnyTransition {
            AnyTransition.modifier(
                active: CustomScaleModifier(scale: 0),
                identity: CustomScaleModifier(scale: 1)
            )
        
    }
}

//
struct CustomScaleModifier: ViewModifier {
    let scale: CGFloat
    func body(content: Content) -> some View {
        content.scaleEffect(scale)
    }
}
