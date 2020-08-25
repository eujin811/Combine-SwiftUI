//
//  Model.swift
//  CombineNetwork
//
//  Created by Youjin on 2020/08/25.
//  Copyright © 2020 Youjin. All rights reserved.
//

import Foundation
import Combine

enum HTTPError: LocalizedError {
    case statusCode
    case post
}

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
}

let urlString = "https://jsonplaceholder.typicode.com/posts"
