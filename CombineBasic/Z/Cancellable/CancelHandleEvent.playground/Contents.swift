import Combine

let subject = PassthroughSubject<String, Error>()

let subscriber = subject.handleEvents(
    receiveSubscription: { (subscription) in
        print("Receive Subscription")
},
    receiveOutput: { output in
        print("ReceiveOutput: \(output)")
},
    receiveCompletion: { (completion) in
        print("Receive Completion")
        switch completion {
        case .finished:
            print("finished")
        case .failure(let error):
            print(error)
        }
},
    receiveCancel: { print("Receive Cancel")},
    receiveRequest: { demand in
        print("Receive Request: \(demand)")
    }).sink(receiveCompletion: { completion in
        switch completion {
        case .finished:
            print("finished")
        case .failure(let error):
            print(error)
        }
    }, receiveValue: { value in
        print("Receive Value in sink \(value)")
    })

subject.send("jinjin")
subscriber.cancel()
