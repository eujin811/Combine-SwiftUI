//
//  ch10TextField.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/13.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch10TextField: View {
    @State private var email = ""

    @State private var name: PersonNameComponents = {
        var comp = PersonNameComponents()       // 사람이름 다루는 타입
        comp.givenName = "Steve"
        comp.familyName = "Jobs"
        return comp
    }()
    @State private var date: Date = Date()
    @State private var number: Double = 0.5
    
    var body: some View {
        Form {
            
            Section(header: Text("TextField")) {
                TextField("PlainTextField",text: .constant("")).textFieldStyle(PlainTextFieldStyle())
                TextField("", text: .constant("RoundedTextFieldStyle")).textFieldStyle(RoundedBorderTextFieldStyle())
                
                
//                TextField("line", text: .constant("")).onAppear { UITextField.appearance().borderStyle = .line }
                
                TextField("bazel", text: .constant("")).onAppear { UITextField.appearance().borderStyle = .bezel }
                
                HStack {
                    Image(systemName: "envelope").frame(width: 30)
                    TextField("이메일", text: $email)//.textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }

            Section(header: Text("Formatter")) {
                formatterView
            }
            
        }
    }
}

//MARK: Formatter
extension ch10TextField {
    var formatterView: some View {
        // 사람 이름에 대한 Formatter
        let nameFormatter = PersonNameComponentsFormatter()
        nameFormatter.style = .short        // short: 이름만 출력
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY.MM.DD"     // 날짜형태.
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent      // %형식 출력
        
        return List {
            TextField("Name", value: $name, formatter: nameFormatter)
            TextField("Date", value: $date, formatter: dateFormatter)
            TextField("Number", value: $number, formatter: numberFormatter)
        }.textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ch10TextField_Previews: PreviewProvider {
    static var previews: some View {
        ch10TextField()
    }
}
