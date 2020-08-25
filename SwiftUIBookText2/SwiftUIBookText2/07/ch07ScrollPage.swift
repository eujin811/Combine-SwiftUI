//
//  ch07ScrollPage.swift
//  SwiftUIBookText2
//
//  Created by YoujinMac on 2020/08/10.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch07ScrollPage: View {
    @State var array = [1...1000]
    var body: some View {
        let colors: [Color] = [.red, .green, .blue, .black, .gray]
        return GeometryReader { proxy in
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(colors.indices) { index in
                        Circle()
                            .fill(colors[index])        // 색 지정
                            .overlay(Text("\(index) 페이지"))      // 현재 페이지 표시
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }.frame(width: proxy.size.width, height: proxy.size.height)
//                    ForEach(self.array.indices, id: \.self) { index in
//                        Circle()
//                            .fill(colors[index % 5])        // 색 지정
//                            .overlay(Text("\(index) 페이지"))      // 현재 페이지 표시
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                            .padding()
//                    }
//                    .frame(width: proxy.size.width, height: proxy.size.height)
                }
                
            }   // 페이징 기능 활성화
                .onAppear { UIScrollView.appearance().isPagingEnabled = true }
            
        }
    }
}

struct ch07ScrollPage_Previews: PreviewProvider {
    static var previews: some View {
        ch07ScrollPage()
    }
}
