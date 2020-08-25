import SwiftUI
import Combine

// 구독자, 값 받는.
class JinSubscriber: Subscriber {
    typealias Input = String
    typealias Failure = Never
    
    var subscription: Subscription?
    
    // 구독, item 요청
    func receive(subscription: Subscription) {
        subscription.request(.unlimited)
        self.subscription = subscription
    }
    
    // event 배출
    func receive(_ input: String) -> Subscribers.Demand {
        return .unlimited
    }
    
    // 완료
    func receive(completion: Subscribers.Completion<Never>) {
        print("Completion")
    }
    
}

// 구독할 것
// Custom Subscription
final class CustomSubscription: Subscription {
    private let cancellable: Cancellable
    
    init(_ cancel: @escaping () -> Void) {
        self.cancellable = AnyCancellable(cancel)
    }
    
    func request(_ demand: Subscribers.Demand) {  }
    
    func cancel() {
        self.cancellable.cancel()
    }
}

let subject = PassthroughSubject<String, Never>()       // 외부에서 값 전송!, ㅎ
let subscriber = JinSubscriber()        // 구독자
subject.print("Combine Test").subscribe(subscriber)

subscriber.subscription = CustomSubscription({ print("cancel!") })
subject.send("야호")
subject.send("호호호")

subscriber.subscription?.cancel()
