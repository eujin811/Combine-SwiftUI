//
//  VCViewModel.swift
//  CombineNetwork
//
//  Created by Youjin on 2020/08/25.
//  Copyright © 2020 Youjin. All rights reserved.
//
import SwiftUI
import Combine
import Foundation

class VCViewModel: ObservableObject {
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

    
}
