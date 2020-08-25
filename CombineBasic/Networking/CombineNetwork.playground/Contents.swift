import Combine
import Foundation
import SwiftUI

enum HTTPError: LocalizedError {
    case statusCode
    case post
}

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
}

let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

let cancellable = URLSession.shared.dataTaskPublisher(for: url)
    .map { $0.data }
    .decode(type: [Post].self, decoder: JSONDecoder()) // data를 JSON형식으로 Decod함
    .replaceError(with: [])   // error 발생 시 전달 x
    .eraseToAnyPublisher()
    .sink(receiveValue: { posts in
        print("전달받은 데이터는 총 \(posts.count)개 입니다.")
    })

cancellable.cancel()

let x = PassthroughSubject<String, Never>()
    .flatMap { name in
        return Future<String, Error> { promise in
            promise(.success(""))
        }.catch { _ in
            Just("No user found")
        }.map { result in
            return "\(result) foo"
        }
}.eraseToAnyPublisher()


