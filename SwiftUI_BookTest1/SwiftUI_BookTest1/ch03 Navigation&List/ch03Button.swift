//
//  ch03Button.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/29.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch03Button: View {
    var body: some View {
        VStack {
            HStack {
                Button("Button") {
                    print("Button1")
                }
                
                Button(action: {
                    print("Button2")
                }) {
                    Text("Button").padding().background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
                
                Button(action: {
                    print("Button3")
                    
                }) {
                    Circle().stroke(lineWidth: 2).frame(width: 80, height: 80).overlay(Text("Button"))
                }.accentColor(.green)
                
            }
            Text("---------")
            HStack(spacing: 20) {
                Button(action: { print("Button1") }) {
                    Image("swift")
                        //.renderingMode(.original)
                        .resizable()
                        .frame(width: 120, height: 120)
                        
                }.buttonStyle(PlainButtonStyle())
                
                Button(action: { print("Button2") }) {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .font(.largeTitle)
                }.buttonStyle(PlainButtonStyle())
                
            }.padding()
            
            Text("-------onTapGesture--------")
            
            HStack {
                Image(systemName: "person.circle").imageScale(.large).onTapGesture {
                    print("onTapGesture")
                }
                
                Button(action: { print("버튼") }) {
                    Image(systemName: "person.circle").imageScale(.large)
                }
            }
            
        }
    }
}



struct ch03Button_Previews: PreviewProvider {
    static var previews: some View {
        ch03Button()
    }
}
