//  ViewModel.swift
//  CombineNetwork
//
//  Created by Youjin on 2020/08/25.
//  Copyright © 2020 Youjin. All rights reserved.

import SwiftUI
import Combine
import Foundation

class ViewModel: ObservableObject {
    @Published var posts: [Post] = []
    var cancelBag = Set<AnyCancellable>()
    
    func request() {
        let url = URL(string: urlString)!
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)                    // data Decding 하나씩!
            .decode(                        // 업스트림에서의 출력 디코딩 해준다.
                type: [Post].self,
                decoder: JSONDecoder())
            //.map { }
            .replaceError(with: [])         // 업스트림 에러나면 바꿀 것.
            .assign(to: \.posts, on: self)  // 가져온 data 디코딩한것 저장하는 역할
            .store(in: &self.cancelBag)
    }
    
    private func displayData(post: [Post]) {
        /*
         func fetchImage(completion: @escaping(UIImage?) -> Void) {
                guard let thumbURL = self.thumbnail else {
                    return
                }
                
                //ApiService is supposed to return on the DispatchQueue.main
                _ = APIService.fetchImageData(imageUrl: thumbURL)
                    .map { UIImage(data: $0) }
                    .replaceError(with: nil)
                    .sink { image in
                        completion(image)
                    }
            }
         
         
         
         */
    }
    
}

// SwiftUI
    // ObservableObject -> 외부 모델이 갖는 data 다루기 위해.
    // @Published -> Observable의 값 변경 시 갱신하도록 알려줌. 변경 즉시 뷰에게 알림!

// Combine
    // URLSession.shared.dataTaskPublisher(for: )
    //  -> URL 세션 데이터 작업 래핑하는 publisher 리턴
    //  -> publisher 작업 완료 시 데이터 발행, 실패 시 error + 종료

