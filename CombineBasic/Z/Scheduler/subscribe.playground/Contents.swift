import SwiftUI
import Combine

let publisher = CurrentValueSubject<String, Never>("Zedd")

publisher.map { _ in print(Thread.isMainThread) }
    .subscribe(on: DispatchQueue.global())
    .sink { _ in print("sink: \(Thread.isMainThread)") }

