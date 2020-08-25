//
//  ch06CustomButton.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/06.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch06CustomButton: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("ButtonStyle")
            HStack(spacing: 20) {
                Button("버튼 스타일 (Color)") { }.buttonStyle(CustomButtonStyle(backgroundColor: .green))
                Button("버튼 스타일 (cornerRadius)") { }.buttonStyle(CustomButtonStyle(cornerRadius: 6))
            }
            
            Text("CustomPrimitiveButtonStyle")
            HStack(spacing: 20) {
                Button("버튼 0.5초 클릭") { print("0.5") }.buttonStyle(CustomPrimitiveButtonStyle())
                Button("버튼 1초 클릭") {
                    print("1")
                }.buttonStyle(CustomPrimitiveButtonStyle(minimumDuration: 1))
            }
            
        }
    }
}

struct ch06CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        ch06CustomButton()
    }
}

//MARK: ButtonStyle
struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color = .blue
    var cornerRadius: CGFloat = 6
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label             // 버튼 생성 시 정의한 뷰에 대한 정보 갖음.
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0 )      // configuration.isPressed 버튼 눌리고 있으면 true, 아니면 false 반환 (눌릴때  0.7로 축소)
    }
}

//MARK: PrimitiveButtonStyle
struct CustomPrimitiveButtonStyle: PrimitiveButtonStyle {
    var minimumDuration = 0.5       //기본 값 0.5
    
    func makeBody(configuration: Configuration) -> some View {
        ButtonStyleBody(configuration: configuration, minimumDuration: minimumDuration)
    }
    
    private struct ButtonStyleBody: View {
        let configuration: Configuration
        let minimumDuration: Double
        @GestureState private var isPressed = false
        
        var body: some View {
            let longPress = LongPressGesture(minimumDuration: minimumDuration).updating($isPressed) { value, state, _ in
                state = value
            }.onEnded { _ in self.configuration.trigger() }
            
            return configuration.label
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .scaleEffect(isPressed ? 0.8 : 1.0)
                .opacity(isPressed ? 0.6 : 1.0)
                .gesture(longPress)
        }
        
        
    }
}
