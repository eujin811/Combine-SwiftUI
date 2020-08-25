//
//  ch05Alert.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05Alert: View {
    @State private var showingAlert: Bool = false
    var body: some View {
        
        Button(action: { self.showingAlert = true } ){
            Text("Alert")
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("제목"),
                  message: Text("내용"),
                  primaryButton: .default(Text("확인"), action: { print("확인") }),
                  secondaryButton: .cancel(Text("취소")))
        }
        
        
    }
}

struct ch05Alert_Previews: PreviewProvider {
    static var previews: some View {
        ch05Alert()
    }
}
