//
//  ch05ViewModifier.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch06ViewModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Custom ViewModifier").modifier(CustomViewModifier(borderColor: .red))

            ModifiedContent(content: Text("ViewModifier"), modifier: CustomViewModifier(borderColor: .black))
            
            Text("concat").modifier(HomeFont().concat(HomeTint()))
            
            Text("New Modifier").customModifier(borderColor: .yellow)
        }
        
    }
}

struct ch05ViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        ch06ViewModifier()
    }
}


//MARK: ViewModifier
struct CustomViewModifier: ViewModifier {
    var borderColor: Color = .red
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color.white)
            .padding()
            .background(Rectangle().fill(Color.gray))
            .border(borderColor, width: 2)
    }
}

//MARK: concat
struct HomeFont: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title)
    }
}

struct HomeTint: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.blue)
    }
}

//MARK: 새로운 수식어
extension View {
    func customModifier(borderColor: Color = .red) -> some View {
        self.modifier(CustomViewModifier(borderColor: borderColor))
    }
}
