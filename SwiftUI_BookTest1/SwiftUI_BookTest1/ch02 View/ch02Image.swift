//
//  ch02Image.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/27.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Image: View {
    var body: some View {
        VStack {
            HStack(spacing: 30) {
                //Image("logo")
                Image("logo").resizable().frame(width: 50, height: 50)
                Image("logo").frame(width: 50, height: 50)
            }
//            HStack {
//                Image("logo").resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0)).frame(width: 100, height: 100)
//
//                Image("logo").resizable(resizingMode: .tile).frame(width: 150, height: 150)
//            }
//            HStack(spacing: 30) {
//                Image("card").resizable().frame(width: 100, height: 150)
//
//                Image("card").resizable().scaledToFit().frame(width: 100, height: 150)
//
//                Image("card").resizable().scaledToFill().frame(width: 100, height: 150).clipped()
//            }
//            HStack(spacing: 30) {
//                Image("card")
//                    .resizable()
//                    .aspectRatio( CGSize(width: 1.6, height: 1), contentMode: .fit)
//                    .frame(width: 100, height: 100)
//                Image("card").resizable().aspectRatio(0.7, contentMode: .fill).frame(width: 100, height: 100).clipped()
//            }
//
        }
        
    }
}

struct ch02Image_Previews: PreviewProvider {
    static var previews: some View {
        ch02Image()
    }
}
