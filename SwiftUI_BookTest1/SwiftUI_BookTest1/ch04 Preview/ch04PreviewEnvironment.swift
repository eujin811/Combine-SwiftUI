//
//  ch04PreviewEnvironment.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/03.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch04PreviewEnvironment: View {
    @Environment(\.layoutDirection) var layoutDirection
    
    var body: some View {
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle).frame(width: 300)
//            Text("Color").foregroundColor(.red)
//            Text("black").foregroundColor(.black)
//
//
//            Image("swift").fixedSize()
//
//        }
        
        //environmentView
        
        MySubView().environment(\.myEnvironment, 10)
    }
}

struct ch04PreviewEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ch04PreviewEnvironment()
            
//            ch04PreviewEnvironment()
//                .environment(\.locale, .init(identifier: "ko_KR"))
//                .environment(\.colorScheme, .light)
//                .previewLayout(.fixed(width: 300, height: 300))
//
//
//            ch04PreviewEnvironment()
//                .environment(\.locale, .init(identifier: "en_US"))
//                .environment(\.layoutDirection, .rightToLeft)
//                .environment(\.colorScheme, .dark)
//                .previewLayout(.fixed(width: 300, height: 300))
        }
    }
}

// MARK: @Environment
extension ch04PreviewEnvironment {
    var environmentView: some View {
        if layoutDirection == .leftToRight {
            return Text("Left to Right")
        } else {
            return Text("Right to Left")
        }
    }
}

// MARK: Custom Environment
struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: Int = 0
}

extension EnvironmentValues {
    var myEnvironment: Int {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
}

struct MySubView: View {
    @Environment(\.myEnvironment) var myValue
    var body: some View {
        Text("\(myValue)")
    }
}
