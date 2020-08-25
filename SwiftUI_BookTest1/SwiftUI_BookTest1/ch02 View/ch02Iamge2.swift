//
//  ch02Iamge2.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Iamge2: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Image("swift")
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                Image("swift")
                    .clipShape(Rectangle().inset(by: 10))
                Image("swift")
                    .clipShape(Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110)))
            }
            
            HStack {
                Image("swift")
                Image("swift").renderingMode(.original)
                Image("swift").renderingMode(.template)
            }//.foregroundColor(.red)
            
            HStack(spacing: 20) {
                Image(systemName: "speaker.3").font(.body)
                Image(systemName: "speaker.3").font(.title)
                Image(systemName: "speaker.3").font(.system(size: 40))
                Image(systemName: "speaker.3").imageScale(.large).font(.system(size: 40))
            }
            HStack(spacing: 20) {
                Image(systemName: "arrow.up").font(Font.title.weight(.black))
            }
        }
    }
}

struct ch02Iamge2_Previews: PreviewProvider {
    static var previews: some View {
        ch02Iamge2()
    }
}
