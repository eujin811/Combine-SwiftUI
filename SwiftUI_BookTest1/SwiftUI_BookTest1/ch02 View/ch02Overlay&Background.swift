//
//  ch02Overlay&Background.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/28.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Overlay_Background: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("overlay")
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle().fill(Color.yellow).frame(width: 50, height: 50)  // 크기를 지정하지 않으면 상위 뷰와 크기가 같음.
            )
            
            Text("background")
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
                .background(
                    Rectangle().fill(Color.green).frame(width: 150, height: 150)
            ).padding()
            
            Text("Alignment")
            Circle()
                .fill(Color.yellow.opacity(0.7))
                .frame(width: 150, height: 150)
                .overlay(               // 뷰 위 왼쪽
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .padding(),
                    alignment: .leading
            )
                .background(            // 뷰 아래 오른쪽
                    Image(
                        systemName: "arrow.right")
                        .font(.title)
                        .padding(),
                    alignment:
                    .trailing
            )
            
            Text("ZStack")
            ZStack {
                Circle()
                    .fill(Color.yellow.opacity(0.7))
                    .frame(width: 150, height: 150)
                HStack {
                    Image(systemName: "arrow.left")
                        .font(.title)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .font(.title)
                }.frame(width: 150)
            }
            
            
        }
    }
}

struct ch02Overlay_Background_Previews: PreviewProvider {
    static var previews: some View {
        ch02Overlay_Background()
    }
}
