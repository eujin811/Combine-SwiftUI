

//
//  ch05Text.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05Test: View {
    @State var framework: String = "UIKit"
    
    var body: some View {
        VStack {
            Button(framework) {
                self.framework = "SwiftUI"
            }
            ch05TestSub(framework: self.$framework)
        }
    }
}

struct ch05Text_Previews: PreviewProvider {
    static var previews: some View {
        ch05Test()
    }
}

struct ch05TestSub: View {
    @Binding var framework: String
    var body: some View {
        Text(framework)
    }
}
