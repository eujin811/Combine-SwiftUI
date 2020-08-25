//
//  ch10Picker.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/13.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch10Picker: View {
    @State private var selection = 2
    @State private var city: City = .서울
    var body: some View {
        
        Form {
            basic
            wheelPicker
            forEachPicker
            
        }
    }
}


extension ch10Picker {
    
    var basic: some View {
        Picker(selection: .constant(1), label: Text("Picker")) {
            Text("1").tag(1)
            Text("2").tag(2)
        }
    }
    
    //MARK: WheelPicker
    var wheelPicker: some View {
        Picker("예약인원", selection: $selection) {
            HStack {
                Image(systemName: "person.fill")
                Text("1인")
            }.tag(1)
            
            HStack {
                Image(systemName: "person.2.fill")
                Text("2인")
            }.tag(2)
            
            HStack {
                Image(systemName: "person.3.fill")
                Text("3인")
            }.tag(3)
        }.padding(.horizontal)
    }
    
    
    
    enum City: String, CaseIterable {
        case 서울, 대전, 대구, 부산, 제주
    }
    
    var forEachPicker: some View {
        Picker("도시", selection: $city) {
            ForEach(City.allCases, id: \.self) {
                Text($0.rawValue).tag($0)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        //.onAppear {
//            UISegmentedControl.appearance().selectedSegmentTintColor = .systemRed
//        }
        //.padding(.horizontal)
    }
    
    //MARK: SegmentedPickerStyle
    
}

struct ch10Picker_Previews: PreviewProvider {
    static var previews: some View {
        ch10Picker()
    }
}
