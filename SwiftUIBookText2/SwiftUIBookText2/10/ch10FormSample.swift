//
//  ch10FormSample.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/13.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch10FormSample: View {
    @State private var brightness: CGFloat = 0.5
    @State private var isTrueTone = true
    @State private var canRaisToWake = true
    @State private var autoLock = "30 Seconds"
    private let autoLockOptions = ["30 Secods", "2 Minute", "Never"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(
                header: Text("밝기"),
                footer: Text("iPhone 디스플레이를 주변광에 맞춰 색상이 다른 환경에서도 일관되게 보이도록 조정한다.")) {
                    Slider(
                        value: $brightness,
                        minimumValueLabel: Image(systemName: "sun.min.fill"),
                        maximumValueLabel: Image(systemName: "sun.max.fill")) { Text("밝기 조절") }
                    Toggle("True Tone", isOn: $isTrueTone)
                }
                
                Section {
                    Picker("자동 잠금", selection: $autoLock) {
                        ForEach(autoLockOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    Toggle("들어서 깨우기", isOn: $canRaisToWake)
                    
                }
                
            }.navigationBarTitle("디스플레이 및 밝기", displayMode: .inline)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ch10FormSample_Previews: PreviewProvider {
    static var previews: some View {
        ch10FormSample()
    }
}
