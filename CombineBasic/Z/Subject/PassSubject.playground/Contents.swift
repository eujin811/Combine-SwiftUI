import UIKit
import Combine

class JinSubscriber: Subscriber {

    typealias Input = String
    typealias Failure = Never
    
    var subscription: Subscription?
    
    
    // 아이템 몇개 내보낼지 결정
    func receive(subscription: Subscription) {
        subscription.request(.max(1))
        self.subscription = subscription
    }
    
    // 몇개 받아올지..?
    func receive(_ input: String) -> Subscribers.Demand {
        print("\(input)")
        switch input {
        case "Jin":
            return .max(2)
        default:
            return .none
        }
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("completion")
    }
    
}

//let publisher = ["1", "2", "3", "4", "5"].publisher
//publisher.subscribe(JinSubscriber())

let subject = PassthroughSubject<String, Never>()

let subscriber = JinSubscriber()

subject.subscribe(subscriber)

subject.send("Jin")
subject.send("Youjin k")
subject.send("kim")
subject.send("ios dev")
subject.send("청소..")

subject.send(completion: .finished)

subscriber.subscription?.request(.max(2))

subject.send("오늘은")
subject.send("금요일")
subject.send("내일 주말")
