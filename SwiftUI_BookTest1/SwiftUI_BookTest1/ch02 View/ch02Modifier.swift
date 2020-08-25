//
//  ch02Modifier.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/27.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

// 수식어

import SwiftUI

struct ch02Modifier: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // 순서의 중요성 1
            Text("SwiftUI")
                .font(.title)       // Text 반환
                .bold()             // Text 반환
                .padding()          // View 반환
            
            Text("SwiftUI")
                .bold()             // Text 반환
                .padding()          // View 반환
                .font(.title)       // View 반환
            
            //            Text("SwiftUI")
            //                .padding()          // View 반환
            //                .bold()             // Text 반환, 컴파일 에러 (view 프로토콜에는 bold 수식어가 없어서.)
            //                .font(.title)
            //
            //            Text("SwiftUI")
            //                .padding()          // View 반환
            //                .font(.title)       // View 반환
            //                .bold()             // 컴파일에러.컴파일 에러 (view 프로토콜에는 bold 수식어가 없어서.)
            
            // 순서의 중요성 2
            Text("ø˚¬©").font(.largeTitle).background(Color.yellow).padding()
            
            Text("ø˚¬©").font(.largeTitle).padding().background(Color.yellow)
        }
    }
}

struct ch02Modifier_Previews: PreviewProvider {
    static var previews: some View {
        ch02Modifier()
    }
}


//extension Text {
//
//    public func font(_ font: Font?) -> Text {
//        <#code#>
//    }
//
//    public func foregroundColor(_ color: Color?) -> Text {
//        <#code#>
//    }
//}
//

extension View {
//    public func font(_ font: Font?) -> some View {
//        <#code#>
//    }
    
}
