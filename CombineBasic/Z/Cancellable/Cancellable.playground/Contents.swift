import SwiftUI
import Combine

print("--------------[ cancel ]-------------")

let subject = PassthroughSubject<Int, Never>()
let subscriber = subject.sink(receiveValue: { value in
    print(value)
})

subject.send(0)
subscriber.cancel()
subject.send(1)


print("\n--------------[ store ]-------------")

var bag = Set<AnyCancellable>()
let subject2 = PassthroughSubject<Int, Never>()

subject2.sink(receiveValue: { value in
    print(value)
    }).store(in: &bag)

subject2.send(7)
subject2.send(8)

