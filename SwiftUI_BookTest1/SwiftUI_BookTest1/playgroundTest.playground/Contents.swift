//: A UIKit based Playground for presenting user interface
  
import Foundation

import SwiftUI

//struct ContentViewPlayground: View {
//    var body: some View {
//        Text("Hello swiftUI")
//    }
//}


// Present the view controller in the Live View window


// 1.

//PlaygroundPage.current.liveView = UIHostingController(rootView: ContentViewPlayground())


// 2.

// func setLiveView<IncomingView>(_ newLiveView: IncomingView) where IncomingView: View
//PlaygroundPage.current.setLiveView(ContentViewPlayground())

//var isLoggedIn: Bool {
//    get { UserDefaults.standard.bool(forKey: "IS_LOGGED_IN") }
//    set { UserDefaults.standard.set(newValue, forKey: "IS_LOGGED_IN") }
//}
//var isFirstLogin: Bool {
//    get { UserDefaults.standard.bool(forKey: "IS_FIRST_LOGIN") }
//    set { UserDefaults.standard.set(newValue, forKey: "IS_FIRST_LOGIN") }
//}
//
//
//
//
//@propertyWrapper
//struct UserDefault<Value> {
//    let key: String
//
//    var wrappedValue: Value? {
//        get { UserDefaults.standard.object(forKey: key) as? Value }
//        set { UserDefaults.standard.set(newValue, forKey: key)}
//    }
//}
//
//@UserDefault(key: "IS_LOGGED_IN") var isLoggedIn: Bool?
//@UserDefault(key: "IS_FIRST_LOGIN") var isFirstLogin: Bool?

// 소수점 둘째 자리까지 고정
//@propertyWrapper
//struct RoundedToTwo {
//    private var vlaue = 0.0
//    private var multiplier = 100.0
//
//    var wrappedValue: Double {
//        get { value }
//        set { value = (newValue * multiplier).rounded() / multiplier }
//    }
//}
//
//struct Numbers {
//    @RoundedToTwo var roundedNum: Double
//}
//
//var numbers = Numbers()
//numbers.roundedNum = 1.2345
//print(numbers.roundedNum)

//@propertyWrapper
//struct RoundedTo<Value: FloatingPoint> {
//    private var value: Value = 0
//    private let precision: Int      // 자릿수 지정 위한 프로퍼티
//    //precision 2일 경우 100, 3일경우 1000
//    private var multiplier: Value {
//        (0..<precision).reduce(1) { (sum, _) in sum * 10 }
//    }
//    
//    init(wrappedValue: Value, _ precision: Int) {
//        assert(precision >= 0)
//        self.precision = precision
//        self.wrappedValue = wrappedValue
//    }
//    
//    var wrappedValue: Value {
//        get { value }
//        set { value = (newValue * multiplier).rounded() / multiplier }
//    }
//    
//    var projectedValue: Self {
//        get { self }
//        set { self = newValue }
//    }
//    
//}
//
//struct Numbers {
//    @RoundedTo(2) var roundedNum = 1.2345
//    @RoundedTo(wrappedValue: 1.2345, 2) var roundedNum2: Double
//}
//
//var numbers = Numbers()
//print(numbers.roundedNum)       // 1.23
//print(numbers.roundedNum2)      // 1.23
//
//
//let roundedTo2 = RoundedTo(wrappedValue: 1.234, 3)
//print(roundedTo2.wrappedValue)
//
//private var _roundedNum: RoundedTo<Double> = RoundedTo<Double>(wrappedValue: 1.2345, 2)
//
//var roundedNum: Double {
//   get { return _roundedNum.wrappedValue }
//   nonmutating set { _roundedNum.wrappedValue = newValue }
//}
//
//var $roundedNum: RoundedTo<Double> {
//    get { _roundedNum.projectedValue }
//    set { _roundedNum.projectedValue = newValue}
//}
