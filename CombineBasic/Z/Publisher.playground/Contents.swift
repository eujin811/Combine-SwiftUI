import SwiftUI
import Combine

let publiser = Just("just")         // publisher, 값 전송

//let subscriber = publiser.sink { (value) in         //
//    print(value)
//
//}


//publiser.sink(receiveCompletion: { (result) in
//    switch result {
//    case .finished:
//        print("receiveCompletion:  finished")
//    case .failure(let error):
//        print(error.localizedDescription)
//    }
//}, receiveValue: { (value) in
//    print("receiveValue: ",value)
//})


class jinSubscriber: Subscriber {
    // Input -> subscriber가 받을 값의 종류
    // Failure -> subscriber가 받을 수 있는 error의 종류
    
    typealias Input = String
    typealias Failure = Never           // Never -> error를 받을 수 없는 경우
    
    
    // subscriber에게 publiser를 구독했음 알리고 item 요청
    // 구독여부 알림, item 요청
    func receive(subscription: Subscription) {
        print("구독 시작")
        subscription.request(.unlimited)        // 아이템 요청! (request ->  요청할 item tn )
    }
    
    // subscriber에게 publiser가 element를 생성했음을 알림
    // publiser element 생성 알림
    func receive(_ input: String) -> Subscribers.Demand {
        print("\(input)")
        return .none
    }
    
    // subscriber에게 publisher가 정상적으로 또는 오류로 publisher를 완료했음을 알린다.
    // 완료! (error 포함)
    func receive(completion: Subscribers.Completion<Never>) {
        print("완료", completion)
    }
    
}

publiser.subscribe(jinSubscriber())
