//
//  ch03Frame.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/31.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch03Frame: View {
    var body: some View {
        
        // 고정크기
//        BasicFrame()
        
        // 크기제약조건
//        LimitFrame()
            
        // ideal 이상적 크기조건
//        IdealFrameBefore()
//        IdealFrameAfter()       // ideal + fixedSize
        
        // fixedSize
//        fixedSizeFrame()
        
        
        // layoutPriority
        LayoutPriorityFrame()
        
    }
}

struct ch03Frame_Previews: PreviewProvider {
    static var previews: some View {
        ch03Frame()
//        ForEach(["iPhone 11 Pro", "iPhone 8"], id: \.self) {
//            ch03Frame().previewDevice(PreviewDevice(rawValue: $0))
//        }
        
    }
}

// 고정크기
struct BasicFrame: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Frame").background( Color.yellow).frame(width: 200, height: 100).border(Color.red)
            
            Rectangle().fill(Color.yellow).frame(width: 200, height: 100)
            
            Text("Frame").background(Color.yellow).frame(width: 200, height: 100, alignment: .leading).border(Color.red)
            
            Text("Frame").background(Color.yellow).frame(width: 200, height: 100, alignment: .trailing).border(Color.red)
            
        }
    }
}


// 크기제약 조건
struct LimitFrame: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.red).frame(minWidth: 100)
            Rectangle().fill(Color.orange).frame(maxWidth: 15)
            
            Rectangle().fill(Color.yellow).frame(height: 150)
            Rectangle().fill(Color.green).frame(maxHeight: .infinity)   // 최대높이
            
            Rectangle().fill(Color.blue).frame(maxWidth: .infinity, maxHeight: .infinity)
            Rectangle().fill(Color.purple)
        }.frame(width: 300, height: 150)
        
    }
}

// MARK: fixedSize()
// idealSize
//
struct IdealFrameBefore: View {
    var body: some View {
        VStack {
            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
            Rectangle()
            Color.red
            Image("swift").resizable()
        }
    }
}

struct IdealFrameAfter: View {
    var body: some View {
        VStack {
            Text("Frame Modifier")
                .font(.title)
                .bold()
                .fixedSize()        // Text의 크기 고정하고 크기 잡음
                .frame(width: 80, height: 30)
                
            
            Rectangle().fixedSize()
            Color.red.fixedSize()
            Image("swift").resizable().fixedSize()
            
            Rectangle()
                .frame(idealWidth: 100)
                .fixedSize()
            
        }
    }
}


struct fixedSizeFrame: View {
    var body: some View {
        VStack(spacing: 100) {
            Group {         //
                Text("FixedSize 적용 시 글자 생략되지 않음").font(.title)
                
                Text("FixedSize 적용 시 글자 생략되지 않음").font(.title).fixedSize(horizontal: false, vertical: true)
                
                Text("FizedSize 적용 시 글자 생략되지 않음").font(.title).fixedSize(horizontal: true, vertical: false)
                
                }.font(.title).frame(width: 150, height: 40)
            
            Rectangle().fixedSize(horizontal: true, vertical: false)
            Rectangle().fixedSize(horizontal: false, vertical: true)
            
        }
    }
}

// MARK: Layout Priority
struct LayoutPriorityFrame: View {
    var body: some View {
        VStack(spacing: 20) {

            // 우선순위 미적용
            HStack {
                Color.red
                Color.green
                Color.blue
            }.frame(height: 40)
            
            // 우선순위 변경
            
            HStack {
                Color.red.layoutPriority(1)
                Color.green//.layoutPriority(1)
                Color.blue.layoutPriority(1)
            }.frame(height: 40)
            
            HStack {
                Color.red.layoutPriority(1)
                Color.green.frame(minWidth: 30)//.layoutPriority(1)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
            
            HStack {
                Color.red.frame(width: 50)
                Color.green.layoutPriority(1)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
            
        }.frame(width: 300)
    }
}
