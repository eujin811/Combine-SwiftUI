//
//  ContentView.swift
//  SwiftUIBookText2
//
//  Created by YoujinMac on 2020/08/10.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("ch07")) {
                    NavigationLink(destination: ch07ScrollView()) {
                        Text("07 ScrollView")
                    }
                    NavigationLink(destination: ch07ScrollPage()) {
                        Text("07 Scroll Page")
                    }
                    NavigationLink(destination: ch07TabView()) {
                        Text("07 TabView")
                    }
                    NavigationLink(destination: ch07TabViewTag()) {
                        Text("07 TabViewTag")
                    }
                }
                
                Section(header: Text("ch08")) {
                    NavigationLink(destination: ch08AnimationSample()) {
                        Text("08 AnimationSample")
                    }
                    NavigationLink(destination: ch08AnimationBasic()) {
                        Text("08 AnimationBasic")
                    }
                    NavigationLink(destination: ch08AnimationSpring()) {
                        Text("08 AnimationSpring")
                    }
                    NavigationLink(destination: ch08AnimationControl()) {
                        Text("08 AnimationControl")
                    }
                    NavigationLink(destination: ch08TransitionBasic()) {
                        Text("08 TransitionBasic")
                    }
                    NavigationLink(destination: ch08TransitionCompose()) {
                        Text("08 TransitionCompose")
                    }
                    NavigationLink(destination: ch08CustomAnimation()) {
                        Text("08 CustomAnimation")
                    }
                    
                }
                
                Section(header: Text("ch09")) {
                    NavigationLink(destination: ch09Gesture()) {
                        Text("09 Gesture")
                    }
                    NavigationLink(destination: ch09DragGesture()) {
                        Text("09 DragGesture")
                    }
                    NavigationLink(destination: ch09MagnificationGesture()) {
                        Text("09 MagnificationGesture")
                    }
                    NavigationLink(destination: ch09RotationGesture()) {
                        Text("09 RotationGesture")
                    }
                    NavigationLink(destination: ch09GestureModifier()) {
                        Text("09 GestureModifier")
                    }
                    NavigationLink(destination: ch09ContextMenu()) {
                        Text("09 ContextMenu")
                    }
                    NavigationLink(destination: ch09ContextMenu2()) {
                        Text("09 ContextMenu2")
                    }
                }
                
                
                
                Section(header: Text("ch10")) {
                    NavigationLink(destination: ch10FormSample()) {
                        Text("10 FormSample")
                    }
                    NavigationLink(destination: ch10Form_View_Controller()) {
                        Text("10 Form_View_Controller")
                    }
                    NavigationLink(destination: ch10Picker()) {
                        Text("10 Picker")
                    }
                    NavigationLink(destination: ch10TextField()) {
                        Text("10 TextField")
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
