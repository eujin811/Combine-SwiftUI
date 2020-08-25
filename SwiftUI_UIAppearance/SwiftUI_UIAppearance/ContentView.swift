//
//  ContentView.swift
//  SwiftUI_UIAppearance
//
//  Created by YoujinMac on 2020/08/06.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //navitationBar의 색
//    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            .foregroundColor: UIColor.systemTeal,
//            .kern: 5 ]
//    }
    
    // navigationBar 폰트
    init() {
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont.italicSystemFont(ofSize: 15)
        ]
        
        UISwitch.appearance().onTintColor = .red
        UISwitch.appearance().thumbTintColor = .green
    }
    
    @State private var isOn = true
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isOn) {
                    Text("UISwitch 색 변경")
                }
                //            Text("Hello, World!")
                //                .navigationBarTitle("UIappearance")
                //Text("Hello, World!")
                    .navigationBarTitle("UIappearance",displayMode: .inline)
            }.padding()
            

            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
