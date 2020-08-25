import SwiftUI
import Combine

class JinSubscriber: Subscriber {
    // Input -> subscriber가 받을 값의 종류
    // Failure -> subscriber가 받을 수 있는 error의 종류
    
    typealias Input = String
    typealias Failure = Never           // Never -> error를 받을 수 없는 경우
    
    
    // 아이템 몇개 내보낼지 결정
    func receive(subscription: Subscription) {
        print("구독 시작")
        subscription.request(.max(1))
    }
    // 몇개 받아올지..?
    func receive(_ input: String) -> Subscribers.Demand {
        print("\(input)")
        switch input {
        case "1":
            return .max(2)
        default:
            return .none    // 1
        }
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("완료", completion)
    }
    
}

let publisher = ["1", "2", "3", "4", "5"].publisher
publisher.subscribe(JinSubscriber())

/*
 subscription.request(.max(2))  // 개수제한
 구독 시작
 1
 2
 */

/*
 subscription.request(.unlimited)   // 무제한
 구독 시작
 1
 2
 3
 4
 완료 finished
 */

/*
 subscription.request(.none)        // 0개
구독시작
 */
