//
//  ch07TabViewTag.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/10.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch07TabViewTag: View {
    enum TabItems { case A, B }
    @State private var selectedTab = 0
    @State private var selected = TabItems.A
    var body: some View {
        
        TabView(selection: $selectedTab) {
//            ForEach(0..<3) { index in
//                Text("태그 \(index)")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .tag(index)
//                    .tabItem {
//                        Image(systemName: self.selectedTab != index ? "\(index).square" : "\(index).square.fill")
//                            .imageScale(.large)
//                        //Text("\()")
//                }
//
//            }
//
//        }
//
                Text("태그 1")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .tag(0)
                    .tabItem {
                        Image(systemName: self.selectedTab != 0 ? "\(0).square" : "\(0).square.fill")
                            .imageScale(.large)
                }
        
                Text("태그 2")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .tag(1)
                    .tabItem {
                        Image(systemName: self.selectedTab != 1 ? "\(1).square" : "\(1).square.fill")
                            .imageScale(.large)
                }
        
                }.onAppear { UITabBar.appearance().unselectedItemTintColor = UIColor.black }
        .onAppear { UITabBar.appearance().backgroundColor = UIColor.red }
        .accentColor(.green)
        
        
        //            TabView(selection: $selected) {
        //                Text("A View")
        //                    .tag(TabItems.A).tabItem {
        //                        Image(systemName: self.selected == TabItems.A ? "a.circle.fill" : "a.circle" ).imageScale(.large)
        //                }
        //
        //                Text("B View").tag(TabItems.B).tabItem {
        //                    Image(systemName: self.selected == TabItems.B ? "b.circle.fill" : "b.circle").imageScale(.large)
        //                }
        //
        //            }
        
    }
}

struct ch07TabViewTag_Previews: PreviewProvider {
    static var previews: some View {
        ch07TabViewTag()
    }
}

