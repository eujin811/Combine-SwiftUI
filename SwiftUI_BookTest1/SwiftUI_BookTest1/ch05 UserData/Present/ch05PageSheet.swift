//
//  ch05PageSheet.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05PageSheet: View {
    @Environment(\.presentationMode) var presetationMode
    // presentationMode : 해당 뷰가 띄워져 있는 상태인지 알려주는 isPresented, 화면 닫는 dismiss 메서드 2가지 제공하는 환경변수
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                if self.presetationMode.wrappedValue.isPresented {
                    self.presetationMode.wrappedValue.dismiss()
                }
            }) {
                Text("Tap to Dismiss").font(.title).foregroundColor(.red)
            }
            
            Button(action: {self.isPresented = false},
                   label: { Text("@Binding Dismiss") })
        }
        
        
        
    }
}

struct ch05PageSheet_Previews: PreviewProvider {
//    @Binding var isPresented: Bool = true
//    @State var isPresented: Bool = true
    static var previews: some View {
//        ch05PageSheet(isPresented: self.$isPresented)
        ch05PresentHome()
    }
}
