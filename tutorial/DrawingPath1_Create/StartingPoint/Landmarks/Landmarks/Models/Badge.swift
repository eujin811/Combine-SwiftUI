//
//  Badge.swift
//  Landmarks
//
//  Created by YoujinMac on 2020/07/23.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                self.badgeSymbols.scaleEffect(1.0 / 4.0, anchor: .top).position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
                
            }
        }.scaledToFit()
    }
}


extension Badge {
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) {
            RotatedBadgeSymbol(angle: .degrees(Double($0) / Double(Badge.rotationCount)) * 360)
        }.opacity(0.5)
        //RotatedBadgeSymbol(angle: .init(degrees: 0)).opacity(0.5)
    }
}



struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
