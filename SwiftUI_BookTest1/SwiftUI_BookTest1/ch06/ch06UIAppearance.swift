//
//  ch06UIAppearance.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/06.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

// 새로 판다. AppDelegate, SceneDelegate 필요해서.
struct ch06UIAppearance: View {
    var body: some View {
        NavigationView {
            Text("Hello, World").navigationBarTitle("UIappearance")
        }
    }
}

struct ch06UIAppearance_Previews: PreviewProvider {
    static var previews: some View {
        ch06UIAppearance()
    }
}


//MARK: UINavigationBar

