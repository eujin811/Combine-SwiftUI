//
//  ch05ActionSheet.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05ActionSheet: View {
    @State private var showingActionSheet = false
    
    var body: some View {
        VStack {
            Button(action: { self.showingActionSheet = true }) {
                Text("ActionSheet")
            }.actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(
                    title: Text("제목"),
                    message: Text("내용"),
                    buttons: [
                        .default(Text("버튼1")),
                        .default(Text("버튼2")),
                        .destructive(Text("버튼3, destructive")),
                        .cancel(Text("취소"))
                ]
                )
            }
            
        }
        
    }
}

struct ch05ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ch05ActionSheet()
    }
}
