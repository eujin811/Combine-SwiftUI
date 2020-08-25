import SwiftUI
import Combine

enum ErrorCase: Error {
    case unknwon
}

let passthroughSubject = PassthroughSubject<String, Error>()
let subscriber = passthroughSubject.sink(
    receiveCompletion: { (result) in
        switch result {
        case .finished:
            print("finished")
        case .failure(let error):
            print(error.localizedDescription)
        }
},
    receiveValue: { (value) in
        print(value)
})

passthroughSubject.send("안녕")
passthroughSubject.send("반가워")

//passthroughSubject.send(completion: .failure(ErrorCase.unknwon))
passthroughSubject.send(completion: .finished)

passthroughSubject.send("stream 이미 종료됨")
