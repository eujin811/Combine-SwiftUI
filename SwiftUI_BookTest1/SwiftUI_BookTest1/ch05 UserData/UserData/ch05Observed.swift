//
//  ch05Observed.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05Observed: View {
    @ObservedObject var user: User
        
    var body: some View {
        VStack(spacing: 30) {
            Text(user.name)
            
//            Button(action: { self.user.score += 1 }) {
//                VStack {
//                    Text("@Publisher")
//                    Text(user.score.description)
//                    
//                }
//            }
            
            Button(action: { self.user.owcCount += 1} ) {
                VStack {
                    Text("objectWillChange")
                    Text(user.owcCount.description)
                }
                
            }
            
            
        }
    }
}

struct ch05Observed_Previews: PreviewProvider {
    static var previews: some View {
        ch05Observed(user: User())
    }
}
