import Combine
import SwiftUI

let subject = PassthroughSubject<String, Error>()

subject.sink(
    receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
            print("Error 발생 (\(error)")
        case .finished:
            print("데이터 발행 완료")
        }
},
    receiveValue: { value in
        print(value)
})

// 외부 발행
subject.send("A")
subject.send("B")

subject.send(completion: .finished)
print("\n------[current]------")

let currentStatus = CurrentValueSubject<Bool, Error>(true)

currentStatus.sink(
    receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
            print("Error 발생 (\(error)")
        case .finished:
            print("데이터 발행 완료")
        }
},
    receiveValue: { value in
        print(value)
})

print("초기값 \(currentStatus.value)")
currentStatus.send(false)

currentStatus.value = true

