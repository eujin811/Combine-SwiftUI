//
//  ch05Model.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI
import Foundation

class User: ObservableObject {
    let name = "User Name"
    
    //변경 즉시 뷰에 알릴 때
//    @Published var score = 0
    
    //원하는 시점에 뷰에 알릴 때
    let objectWillChange = ObjectWillChangePublisher()
//    var owcCount = 0 {
//        willSet { objectWillChange.send() }
//    }
    
    //두번 클릭했을 때 변함.
    var owcCount = 0 {
        willSet {
            print(newValue % 2)
            if(newValue % 2 == 0) {
                print("doubleClick")
                objectWillChange.send()
            }
        }
    }
    
}
