//
//  ch03Navigation.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/30.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch03Navigation: View {
    var body: some View {
        NavigationView {
           
            VStack(spacing: 20) {
                NavigationLink(destination: Text("Destination View")/*.navigationBarBackButtonHidden(true)*/) {
                    Image("swift")
                        .renderingMode(.original)
                    }
                .buttonStyle(PlainButtonStyle())
                
                
                
                NavigationLink(destination: Text("디테일뷰").font(.largeTitle)) {
                    Text("마스터 뷰").font(.title)
                }
                
                NavigationLink(destination: Text("디테일 뷰 영역")) {
                    Text("마스터 뷰 2").font(.title)
                }
                
            }.navigationBarTitle("네비게이션 링크.",displayMode: .large)
            //.navigationBarHidden(true)
            
        }
    }
}

struct ch03Navigation_Previews: PreviewProvider {
    static var previews: some View {
        ch03Navigation()
    }
}
