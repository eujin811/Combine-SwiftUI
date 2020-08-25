//
//  ch02Spacer.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Spacer: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("---------------Spacer 크기----------------")
            HStack {
                Spacer()//.background(Color.blue)
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            
            HStack {
                Spacer().frame(width: 100)
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            Text("---------------Spacer min-----------------")
            HStack {
                Text("Spacer MinLenth").font(.title).foregroundColor(.white)
                Spacer(minLength: 100)
                Text("Spacer").font(.title).background(Color.green)
            }.background(Color.gray)
            
           
        }
    
        //Spacer().background(Color.gray)
        /*
         ZStack {
                    Color.clear
                    Text("Spacer").font(.title).background(Color.yellow)
                }.background(Color.blue)
         */
    }

        
}

struct ch02Spacer_Previews: PreviewProvider {
    static var previews: some View {
        ch02Spacer()
    }
}
