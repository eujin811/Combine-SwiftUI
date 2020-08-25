//
//  ch08DragGesture.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch09DragGesture: View {
    // 제스처 사용 중일 때 변화하는 제스처의 현재 상태를 임시 저장,
    @GestureState private var translation: CGSize = .zero
    
    var body: some View {
        let dragGesture = DragGesture()
            .updating($translation) { (value, state, _) in
                state = value.translation      // translation 프로퍼티에 지금까지 움직인 위치정보 저장.
        }
        
        return Circle().frame(width: 100, height: 100)
            .offset(translation)            // 제스처로 이동한 거리만큼 뷰가 함께 이동
            .gesture(dragGesture)
        
        //드래그 제스처 인식 종료 시 translation 초기화,
    }
}

struct ch08DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        ch09DragGesture()
    }
}


