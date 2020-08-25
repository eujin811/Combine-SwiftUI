//
//  ch09ContextMenu2.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/13.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09ContextMenu2: View {
    @State private var rotation: Double = 0
    @State private var fillColor: Color = .blue
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(fillColor)
            .hueRotation(Angle(degrees: rotation))
            .frame(width: 180, height: 180)
            .rotationEffect(Angle(degrees: rotation))
            .animation(.default)
            .contextMenu { contextMenu }
    }
}

//MARK: ContextMenu
extension ch09ContextMenu2 {
    var contextMenu: some View {
        VStack {
            if rotation < 180 {
                Button(action: { self.rotation += 90 }) {
                    Text("90도 우회전")
                    Image(systemName: "rotate.right.fill")
                }
            }
            
            if rotation > -180 {
                Button(action: { self.rotation -= 90 }) {
                    Text("90도 좌회전")
                    Image(systemName: "rotate.left.fill")
                }
            }
            
            Button(action:  {
                let color = [Color.red, Color.green, Color.blue].randomElement()!
                self.fillColor = color
            }) {
                Text("색상 변경")
                Image(systemName: "rectangle.fill")
            }
            
            
        }
    }
}

struct ch09ContextMenu2_Previews: PreviewProvider {
    static var previews: some View {
        ch09ContextMenu2()
    }
}
