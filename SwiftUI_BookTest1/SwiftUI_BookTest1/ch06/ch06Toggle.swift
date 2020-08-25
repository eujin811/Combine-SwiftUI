//
//  ch06Toggle.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/06.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch06Toggle: View {
    @State private var isOn = true
    var body: some View {
        VStack(spacing: 20) {
            Toggle("기본 토글", isOn: $isOn)
            
            Toggle("커스텀 코글", isOn: $isOn).toggleStyle(CustomToggleStyle())
            }.font(.headline).padding()
    }
}

struct ch06Toggle_Previews: PreviewProvider {
    static var previews: some View {
        ch06Toggle()
    }
}

//MARK: CusotomToggleStyle
struct CustomToggleStyle: ToggleStyle {
    let size: CGFloat = 30
    func makeBody(configuration: Configuration) -> some View {
        let isOn = configuration.isOn
        return HStack {
            configuration.label     // 토글 사용용도 표시
            Spacer()
            ZStack(alignment: isOn ? .top : .bottom) {
                Capsule()
                    .fill(isOn ? Color.green : Color.red)
                    .frame(width: size, height: size * 2)
                
                Circle()
                    .frame(width: size - 2, height: size - 2)
                    .onTapGesture {
                        withAnimation {
                            configuration.isOn.toggle()
                        }
                }
                
            }
        }
    }
}
