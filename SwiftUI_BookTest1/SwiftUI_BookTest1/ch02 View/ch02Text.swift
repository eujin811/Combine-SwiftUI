//
//  ch02Text.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/07/27.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch02Text: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.black)
            
            Text("글자색(forground, 배경 background")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("커스텀폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menolo", size: 16))
                .bold()
                .italic()
                .underline()
                .strikethrough()
            
            Text(" 라인 수 제한과 \n 텍스트 정렬기능 \n 짤리는 부분").lineLimit(2)
                .multilineTextAlignment(.trailing) // 다중행 문자열의 정렬 방식 설정
                .fixedSize()      // 주어진 공간 크기 작아도 텍스트 생략x
            
            // 다수의 텍스트 하나로 묶어서 동시에 적용
            Text("자간과 기준선")
                .kerning(8) + Text("조정도 쉽게 가능하다.").baselineOffset(8).font(.system(size: 16))
            
            

            
        }
    }
}

struct ch02Text_Previews: PreviewProvider {
    static var previews: some View {
        ch02Text()
    }
}


