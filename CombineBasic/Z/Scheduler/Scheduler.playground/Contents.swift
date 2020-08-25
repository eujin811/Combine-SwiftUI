import SwiftUI
import Combine

let subject = PassthroughSubject<Int, Never>()

let token = subject.sink(
    receiveValue: { value in
        print(Thread.isMainThread)
})

subject.send(1)

DispatchQueue.global().async {
    subject.send(2)
}

