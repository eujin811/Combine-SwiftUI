//
//  CircleImage.swift
//  LandMarks_SwiftUI
//
//  Created by YoujinMac on 2020/07/22.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
        //Text("Jin")
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
