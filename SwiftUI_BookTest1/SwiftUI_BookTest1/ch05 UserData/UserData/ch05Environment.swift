//
//  ch05Environment.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05Environment: View {
    var body: some View {
        EnvironmentSuperView().environmentObject(User())
    }
}

struct ch05Environment_Previews: PreviewProvider {
    static var previews: some View {
        ch05Environment()
    }
}


struct EnvironmentSuperView: View {
    var body: some View {
        EnvironmentSubView()
    }
}

struct EnvironmentSubView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        Text(user.name.description)
    }
}
