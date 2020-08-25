//
//  UserData.swift
//  Landmarks
//
//  Created by YoujinMac on 2020/07/22.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

/*
 Publisher
 - 이벤트 발생
 - Operator에 데이터 전달
 
 Operator
 - 이벤트 가공
 - PUblisher에 데이터 요청
 - Operator에 데이터 전달
 
 Subscriber
 - 이벤트 소비
 - Operator에 데이터 요청
 
 */
