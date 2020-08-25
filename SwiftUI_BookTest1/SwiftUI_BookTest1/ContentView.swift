//
//  ContentView.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/27.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("ch01")) {
                    NavigationLink(destination: ch01()) {
                        Text("ch01")

                    }
                }
                
                Section(header: Text("ch02")) {
                    NavigationLink(destination: ch02Text()) {
                        Text("ch02Text")
                    }
                    NavigationLink(destination: ch02Modifier()) {
                        Text("ch02 Modifier")
                    }
                    NavigationLink(destination: ch02Image()) {
                        Text("ch02 Image")
                    }
                    NavigationLink(destination: ch02Iamge2()) {
                        Text("ch02 Image2")
                    }
                    NavigationLink(destination: ch02Stack()) {
                        Text("ch02 Stack")
                    }
                    NavigationLink(destination: ch02Stack2_Ex()) {
                        Text("ch02 Stack2")
                    }
                    NavigationLink(destination: ch02Spacer()) {
                        Text("ch02 Spacer")
                    }
                    NavigationLink(destination: ch02Spacer2()) {
                        Text("ch02 Spacer2")
                    }
                    NavigationLink(destination: ch02Overlay_Background()) {
                        Text("ch02 Overlay&Background")
                    }
                    
                }
                
                Section(header: Text("ch03")) {
                    NavigationLink(destination: ch03Button()) {
                        Text("ch03 Button")
                    }
                    NavigationLink(destination: ch03Navigation()) {
                        Text("ch03 Navigation")
                    }
                    NavigationLink(destination: ch03NavigationView()) {
                        Text("ch03 NavigationView")
                    }
                    NavigationLink(destination: ch03List1()) {
                        Text("ch03 List")
                    }
                    NavigationLink(destination: ch03GeometryReader()) {
                        Text("ch03 GeometryReader")
                    }
                    NavigationLink(destination: ch03Frame()) {
                        Text("ch03 Frame")
                    }
                }
                
                Section(header: Text("ch05")) {
//                    NavigationLink(destination: ch05PageSheet()) {
//                        Text("ch05PageSheet")
//                    }
                    NavigationLink(destination: ch05PresentHome()) {
                        Text("ch05PageSheet")
                    }
                    NavigationLink(destination: ch05Alert()) {
                        Text("ch05 Alert")
                    }
                    NavigationLink(destination: ch05ActionSheet()) {
                        Text("ch05ActionSheet")
                    }
                   
                }
                
                Section(header: Text("ch06")) {
                    NavigationLink(destination: ch06ViewModifier()) {
                        Text("ch06 ViewModifier")
                    }
                    NavigationLink(destination: ch06CustomButton()) {
                        Text("ch06 CustomButton")
                    }
                    NavigationLink(destination: ch06Toggle()) {
                        Text("ch06 Toggle")
                    }
                }
                
            }
            
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

