//
//  ch10Form_View&Controller.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/13.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch10Form_View_Controller: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("뷰")) {
                    Text("텍스트")
                    Image(systemName: "gear").font(.title)
                    Rectangle()
                    Color.gray
                }
                
                Section(header: Text("컨트롤").font(.headline)) {
                    Button("버튼") { }
                    TextField("플레이스 홀더", text: .constant("텍스트 필드"))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("플레이스 홀더", text: .constant("시큐어 필드"))
                    Slider(value: .constant(0.5))
                    Toggle("토글", isOn: .constant(true))
                    Stepper("스테퍼", onIncrement: {}, onDecrement: {})
                    Picker("피커", selection: .constant("옵션")) {
                        Text("옵션").tag("옵션")
                    }
                    DatePicker(selection: .constant(Date())) {
                        Text("DatePicker")
                    }
                }
            }.navigationBarTitle("폼 (뷰+컨트롤러)",displayMode: .inline)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ch10Form_View_Controller_Previews: PreviewProvider {
    static var previews: some View {
        ch10Form_View_Controller()
    }
}
