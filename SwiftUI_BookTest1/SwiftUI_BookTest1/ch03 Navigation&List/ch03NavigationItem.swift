//
//  ch03NavigationView.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/29.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch03NavigationView: View {
    
    
    var body: some View {
        
        let leadingItem = Button(action: { print("Leadiong item tapped")}) {
            Image(systemName: "bell").imageScale(.large)
        }
        let trailingItem = Button(action: { print("Trailing")}) {
            Image(systemName: "gear").imageScale(.large)
        }
        
        return NavigationView {
            Image("swift")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .navigationBarTitle("Title")
        }
    }
}

struct ch03NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ch03NavigationView()
    }
}
