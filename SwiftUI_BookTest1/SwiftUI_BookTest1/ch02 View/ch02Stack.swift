//
//  ch02Stack.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Stack: View {
    var body: some View {
        HStack(alignment: .center) {
            Rectangle().fill(Color.green).frame(width: 150, height: 150)
            Rectangle().fill(Color.gray).frame(width: 150, height: 350)//.offset(x: 40, y: 40)
        }
        
//        VStack(alignment: .trailing) {
//            Rectangle().fill(Color.green).frame(width: 150, height: 150)
//            Rectangle().fill(Color.gray).frame(width: 250, height: 350)//.offset(x: 40, y: 40)
//
//        }.padding().border(Color.black)
        
        
    }
}

struct ch02Stack_Previews: PreviewProvider {
    static var previews: some View {
        ch02Stack()
    }
}
