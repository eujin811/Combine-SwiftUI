//
//  ch08AnimationSample.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/11.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch08AnimationSample: View {
    @State private var blur: Bool = false
    @State private var reduction: Bool = false
    
    var body: some View {
        
        
        VStack {
            //.animation()
            Image("cat")
                .blur(radius: blur ? 5 : 0)
                //.animation(nil)
                .scaleEffect(reduction ? 0.7 : 1)
                .onTapGesture {
                    self.blur.toggle()
                    self.reduction.toggle()
            }.animation(.default/*, value: reduction*/)
            //.scaleEffect(reduction ? 0.7 : 1)
            
            //withAnimation
            Image("cat")
                .blur(radius: blur ? 5 : 0)
                .scaleEffect(reduction ? 0.7 : 1)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.blur.toggle()
                        self.reduction.toggle()
                    }
            }
            
            
        }
        
    }
}
    /*
     .animation(nil) 앞부분 추후 animation 추가할때 적용 안됨.
     withAnimation 해당 함수 내부의 값 변경과 관련된 시각적 효과에 애니메이션 적용
     */
    
    
    struct ch08AnimationSample_Previews: PreviewProvider {
        static var previews: some View {
            ch08AnimationSample()
        }
}
