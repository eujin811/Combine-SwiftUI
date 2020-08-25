//
//  ch04Preview.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/03.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch04Preview: View {
    var body: some View {
        HStack {
            Image("swift").fixedSize()
            Text("swift")
            Image(systemName: "pencil")
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .background(Color.blue)
            Text("pencil")
        }
    }
}

struct ch04Preview_Previews: PreviewProvider {
    static var previews: some View {
        // MARK: 여러개
//        ForEach(["iPhone 11 Pro", "iPhone 8"], id: \.self) {
//            ch04Preview()
//                .previewDevice(PreviewDevice(rawValue: $0))
//                .previewDisplayName($0+"preview")
//        }
        
        // MARK: sizeThatFits
//        Group {
//            ch04Preview().previewLayout(.sizeThatFits)
//            ch04Preview()
//        }
        
        // MARK: fixed
        ch04Preview().previewLayout(.fixed(width: 550, height: 250))
        
        
    }
}


