import Combine
import SwiftUI

let externalProvider = PassthroughSubject<String, Never>()
let anyCancellable = externalProvider.sink { stream in
    print("전달받은 데이터 \(stream)")
}

externalProvider.send("A")
externalProvider.send("B")
externalProvider.send("C")
anyCancellable.cancel()         // 데이터 발행 중단
externalProvider.send("D")
