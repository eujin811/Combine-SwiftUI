import SwiftUI
import Combine

let publisher = ["Jin"].publisher

publisher.map { _ in print(Thread.isMainThread) }
    .receive(on: DispatchQueue.global())
    .map { print(Thread.isMainThread) }
    .sink { print(Thread.isMainThread) }

