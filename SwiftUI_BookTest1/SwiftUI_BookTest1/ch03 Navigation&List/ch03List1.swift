//
//  ch03List1.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/30.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch03List1: View {
    var body: some View {
        // 정적 콘텐츠
        //ListBasic()
        
        // 동적 콘텐츠
        //        List1()
        //        List2()
        
        // 정적 + 동적
        //        ListOther()
        //        SimpleSectionList()
        
        // section + cell
        SectionFooterList()     // 과일, 음료수
        
        //List style
        // 1. GroupedListStyle
        //
        
    }
}

struct ch03List1_Previews: PreviewProvider {
    static var previews: some View {
        ch03List1()
    }
}

// 정적 콘텐츠
struct ListBasic: View {
    var body: some View {
        List {
            Text("List").font(.largeTitle)
            Image("swift")
            Circle().frame(width: 100, height: 100)
        }
    }
}

//--------동적 콘텐츠

struct List1: View {
    var body: some View {
        List(0..<100) {
            Text("\($0)")
        }
    }
}

// id 식별자 지정 , 직접 인수 제공
// id 매개 변수에는 Hashable 프로토콜을 준수하는 프로퍼티 지정 가능, 그 데이터 타입 자체가 Hashable을 준수하면 간단히 self라고 입력 가능
struct List2: View {
    var body: some View {
        List(["A","B","C","D","E"], id: \.self) {
            Text("\($0)")
        }
    }
}

// identifiable 프로토콜 채택
struct Animal: Identifiable {
    let id = UUID()
    let name: String
}

//struct List3: View {
//    var body: some View {
//        List([Animal(name: "tory"), Animal(name: "jinjin")]) {
//            Text("\($0)")
//        }
//    }
//}


//
struct ListOther: View {
    var body: some View {
        List {
            Text("번호")
            ForEach(0..<50) {
                Text("\($0)")
            }
        }
    }
}

struct SimpleSectionList: View {
    let fruits = ["사과", "배", "포도", "바나나"]
    let drinks = ["물", "우유", "탄산수"]
    var body: some View {
        List {
            Text("Fruits").font(.largeTitle)
            ForEach(fruits, id: \.self) {
                Text($0)
            }
            
            Text("Drinks").font(.largeTitle)
            ForEach(drinks, id: \.self) {
                Text($0)
            }
        }
    }
}

// Section + Footer
struct SectionFooterList: View {
    var body: some View {
        let fruits = ["사과", "배", "포도", "바나나"]
        let drinks = ["물", "우유", "탄산수"]
        
        let titles = ["Fruits", "Drinks"]
        let data = [fruits, drinks]
        
        return List {
            ForEach(data.indices) { index in
                Section(
                    header: Text(titles[index]).font(.title),
                    footer: HStack {
                        Spacer()
                        Text("\(data[index].count)건")}
                ) {
                    ForEach(data[index], id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        //.listStyle(GroupedListStyle())
        //.environment(\.horizontalSizeClass, .regular)
        
        
        
    }
}
