//
//  ch02Spacer2.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Spacer2: View {
    var body: some View {
        VStack {
            Text("제목").font(.largeTitle)
            Text("부제목").foregroundColor(Color.gray)
            Spacer()
            Text("본문 내용")
            Spacer()
            Spacer()
            Text("각주").font(.body)
            }
        .font(.title)
        .frame(width: 200, height: 350)
        .padding()
        .border(Color.blue, width: 2)
    }
}

struct ch02Spacer2_Previews: PreviewProvider {
    static var previews: some View {
        ch02Spacer2()
    }
}
