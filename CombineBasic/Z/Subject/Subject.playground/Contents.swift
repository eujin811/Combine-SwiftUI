import SwiftUI
import Combine


print("------------------[currentValueSubejct]-------------------")
let currentValueSubject = CurrentValueSubject<String, Never>("오늘은")
let subscriber = currentValueSubject.sink(receiveValue: {
    print($0)
})

currentValueSubject.value = "바로"
currentValueSubject.send("금요일!")


print("------------------[passthroughSubejct]-------------------")

let passthroughSubject = PassthroughSubject<String, Never>()
let subscriber2 = passthroughSubject.sink(receiveValue: {
    print($0)
})
passthroughSubject.send("hi")
passthroughSubject.send("Hello")


