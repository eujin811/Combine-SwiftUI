//
//  ch02Stack2_Ex.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Stack2_Ex: View {
    var body: some View {
        VStack {
            Text("Set").font(.largeTitle).bold()
            
            HStack {
                Text("Circle").font(.title)
                Spacer()
            }
            
            ZStack(alignment: .center) {
                Rectangle().frame(height: 10).background(Color.black)
                HStack(spacing: 30) {
                    //Circle().frame(width: 100, height: 100).foregroundColor(.gray)
                    Circle().fill(Color.gray)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.yellow)
                    RoundedRectangle(cornerRadius: 30).fill(Color.orange)
                }
            }.padding()
            
            HStack {
                Text("Rectangle").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                HStack(spacing: 20) {
                    //Rectangle().fill(Color.gray)
                    Color.gray
                    Rectangle().fill()
                    Rectangle().fill(Color.white).border(Color.black, width: 2)
                }
            }.padding()
            
        }
    }
}

struct ch02Stack2_Ex_Previews: PreviewProvider {
    static var previews: some View {
        ch02Stack2_Ex()
    }
}
