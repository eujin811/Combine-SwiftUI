//
//  ch01.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/27.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch01: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
                .font(.title)
                .fontWeight(.heavy)
                //.foregroundColor(.primary)
                .fontWeight(.bold)
                .foregroundColor(.gray) + Text("Hi").font(.largeTitle).foregroundColor(.blue).italic()
            
            Spacer()
            Text("Hello \n Hi")
            Spacer()
            Text("hahaha \n").lineLimit(1)
            
            Spacer()
            
            Image("logo")
                //                .resizable()
                .scaledToFit()
            
            Button(action: {
                print("click")
            }) {
                Text("Button")
                    .font(.title)//.foregroundColor(.gray)
            }
        }.padding()    }
}

struct ch01_Previews: PreviewProvider {
    static var previews: some View {
        ch01()
    }
}
