//
//  ch07ScrollView.swift
//  SwiftUIBookText2
//
//  Created by YoujinMac on 2020/08/10.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch07ScrollView: View {
    var body: some View {
        //        BasicScrollView()
        //        DoubleScroll()
        
        //        ScrollViewSize()
        //        ScrollViewIdeal()
                ScrollViewGeometry()
        
//        ScrollYuojin()
    }
}

struct ch07ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ch07ScrollView()
    }
}

//MARK: Basic
struct BasicScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            Text("스크롤 뷰").font(.largeTitle).bold().background(Color.gray)
        }.background(Color.black)
    }
}


//MARK: DoubleScroll (Geometry)
struct DoubleScroll: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Vertical ScrollView").font(.largeTitle)
                ScrollView {
                    ForEach(0..<10) { i in
                        Circle()
                            .fill(Color(white: 0.2 + (0.8 * Double(i) / 10)))   // 순서에 따른 색변화
                            .frame(width: 80, height: 80)
                    }
                    .frame(width: geometry.size.width / 2)
                }
                .frame(height: geometry.size.height / 2)
                .padding(.bottom)
                
                Text("Horizontal ScrollView").font(.largeTitle)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { i in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.yellow)
                                .frame(width: 100, height: 100)
                                .scaleEffect(1 - (0.7 * CGFloat(i) / 10))
                        }
                    }
                    .frame(height: geometry.size.height / 5)
                    .padding(.horizontal)
                }
                
                
            }
        }
    }
}

//MARK:Size
struct ScrollViewSize: View {
    var body: some View {
        //        ScrollView(.horizontal) {
        //            HStack {
        //                Color.black
        //                Color.gray
        //                Color.blue
        //            }.fixedSize(horizontal: true, vertical: false)
        //        }
        
        //        ScrollView {
        //            VStack {
        //                Color.black
        //                Color.gray
        //                Color.blue
        //            }
        //            .fixedSize(horizontal: true, vertical: false)
        //        }
        
        
        ScrollView(.horizontal) {
            HStack {
                Color.black.frame(height: 50)
                Color.gray.frame(width: 100, height: 50)
                Color.blue.frame(width: 100, height: 100)
            }.fixedSize(horizontal: true, vertical: false)
        }
        
    }
}

//MARK: ScrollView Ideal
struct ScrollViewIdeal: View {
    var body: some View {
        // 세로 스크롤과 같은 역할.
        ScrollView {
            VStack {
                Color.black
                Color.gray.frame(idealHeight: 30)
                Color.blue.frame(idealHeight: 200)
            }
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

//MARK: Geometry
struct ScrollViewGeometry: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10) { _ in
                GeometryReader {
                    Rectangle().fill(self.color(from: $0))
                    
                }.frame(width: 150, height: 150)
            }
        }
        
    }
    
    // 스크롤 뷰 기준으로 하는 Geometry
    func color(from proxy: GeometryProxy) -> Color {
        let yOffset = proxy.frame(in: .global).minY - 44
        let color = min(1, 0.2 + Double(yOffset / 1000))    // 0.2~1 사이의 값
        return Color(hue: color, saturation: color, brightness: color)
    }
    
}


//MARK: Geometry
struct ScrollYuojin: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Color
                        .gray
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
                    Text("Geometry Size: \(Int(geometry.size.width)), \(Int(geometry.size.height))")
                }
            }.fixedSize(horizontal: true, vertical: false)
        }
    }

    
}
