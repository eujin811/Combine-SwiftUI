import Combine
import SwiftUI


class CustomSubscriber: Subscriber {
    typealias Input = Int
    typealias Failure = Never
    
    // 구독 수
    func receive(subscription: Subscription) {
        print("데이터 구독 시작")
        subscription.request(.unlimited)
    }
    
    // 구독 이후의 데이터 스트림 변경
    func receive(_ input: Int) -> Subscribers.Demand {
        print("데이터 받아옴", input)
        return .none    //현재 데이터 스트림 유지
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("완료")
    }
    
}

let formatter = NumberFormatter()
formatter.numberStyle = .ordinal
(1...10).publisher.map {
    formatter.string(from: NSNumber(integerLiteral: $0)) ?? ""
}.sink {
    print($0)
}


