//
//  ch07TabView.swift
//  SwiftUIBookText2
//
//  Created by YoujinMac on 2020/08/10.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch07TabView: View {
    var body: some View {
        TabView {
            VStack {
                Text("첫 번째 탭").font(.largeTitle)
                Image("swift")
            }
            .tabItem {
                Image(systemName: "house")
                Text("아이템 1")
            }
            
            Text("두 번째 탭의 화면")
                .font(.title)
                .padding()
                .background(Color.yellow)
                .tabItem {
                    Image(systemName: "cube")
                    Text("아이템 2")
            }
            
            SomeView()
                .tabItem {
                    Image(systemName: "person")
                    Text("아이템")
            }
            
        }
        
        
    }
}


struct SomeView: View {
    var body: some View {
        VStack {
            Text("세 번째 탭")
            Text("다른 뷰")
            
        }.font(.title)
    }
}

struct ch07TabView_Previews: PreviewProvider {
    static var previews: some View {
        ch07TabView()
    }
}

