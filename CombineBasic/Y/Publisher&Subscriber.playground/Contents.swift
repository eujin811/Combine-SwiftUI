import Combine
import SwiftUI

//Just(5).sink {
//    print($0)
//}
//
//// 5
//
let provider = (1...10).publisher

provider.sink(
    receiveCompletion: { _ in
        print("데이터 전달 완료")
},
    receiveValue: { data in
        print(data)
})


class CustomSubscriber: Subscriber {
    typealias Input = String
    typealias Failure = Never
    
    // 구독 수
    func receive(subscription: Subscription) {
        print("데이터 구독 시작")
        subscription.request(.unlimited)
        //subscription.request(.max(2))
    }
    
    // 구독 이후의 데이터 스트림 변경
    func receive(_ input: String) -> Subscribers.Demand {
        print("데이터 받아옴", input)
        return .none    //현재 데이터 스트림 유지
//        return .unlimited
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("완료")
    }
    
}

let publisher = ["A","B","C","D","E","F","G"].publisher
//let publisher = (1...1000).publisher

let subscriber = CustomSubscriber()
publisher.subscribe(subscriber)
