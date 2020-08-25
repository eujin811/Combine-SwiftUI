//
//  ch05Home.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05Home: View {
    @State private var isFavorite = true
    @State private var count = 0
    
    var body: some View {
//        ch05Observed(user: User())
        ch05Environment()
        
        
//        VStack(spacing: 30) {
//            Toggle(isOn: $isFavorite) {
//                Text("isFavorite: \(isFavorite.description)")
//            }
//            Stepper("Count: \(count)", value: $count)
//        }.fixedSize()
        
        
    }
}

struct ch05Home_Previews: PreviewProvider {
    static var previews: some View {
        ch05Home()
    }
}
