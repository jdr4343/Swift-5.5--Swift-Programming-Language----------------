//: [Previous](@previous)

import Foundation

//Capturing Values (값 붙잡기)

//클로저는 자신이 정의된 곳 주위의 상수와 변수를 붙잡을  수 있습니다. 그러면, 상수와 변수를 정의한 원본 영역이 더 이상 존재하지 않더라도, 클로저가 이 상수와 변수를 참조하고 수정할 수 있습니다.
// 값을 붙잡을 수 있는 가장 간단한 형식의 클로저는, 또 다른 함수 본문 내에서 작성된, ‘중첩 함수 (nested function)’ 입니다.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
  var runningTotal = 0
  func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementer
}
//makeIncrementer 의 반환 타입은 () -> Int 입니다. 이는, 단순한 값이 아닌, 하나의 함수 (function) 를 반환한다는 의미입니다.
//반환하는 함수는 매개 변수를 가지지 않으며, 매 번 호출할 때마다 Int 값을 반환합니다.
let incrementByTen = makeIncrementer(forIncrement: 10)
let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

incrementBySeven()

incrementByTen()
// 10 이라는 값을 반환합니다.
incrementByTen()
// 20 이라는 값을 반환합니다.
incrementByTen()
// 30 이라는 값을 반환합니다.

//다시 원래의 ‘증가기 (incrementByTen)’ 을 호출하면 그 자신의 runningTotal 변수는 계속 증가하지만, incrementBySeven 이 붙잡은 변수에는 영향을 주지 않습니다.

var runningTotal = 0
var amount = 10
func incrementer() -> Int {
  runningTotal += amount
  return runningTotal
}


//Closures Are Reference Types (클로저는 참조 타입입니다)
//예제에서, incrementBySeven 과 incrementByTen 은 상수이지만, 이 상수들이 참조하는 클로저는 여전히 자신이 붙잡고 있는 runningTotal 변수를 증가시킬 수 있습니다. 이는 함수와 클로저가 참조 타입 (reference types) 이기 때문입니다.

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// 40 이라는 값을 반환합니다.

incrementByTen()
// 50 이라는 값을 반환합니다.





//: [Next](@next)
