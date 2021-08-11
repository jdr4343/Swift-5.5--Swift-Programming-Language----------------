//: [Previous](@previous)

import Foundation

//Escaping Closures (벗어나는 클로저)
//클로저는 함수에 인자로 전달된 클로저가, 함수를 반환 후에도 호출될 때 함수를 벗어난다 (escape) 라고 말합니다
//클로저를 매개 변수 중 하나로 취하는 함수를 선언할 때, 클로저가 벗어나도록 허용된 것임을 지시하기 위해 매개 변수의 타입 앞에 @escaping 을 작성할 수 있습니다.
//클로저가 벗어날 수 있는 한 가지 방법은 함수 외부에서 정의한 변수에 이를 저장하는 것입니다.
//클로저가 벗어날 수 있는 한 가지 방법은 함수 외부에서 정의한 변수에 이를 저장하는 것입니다. 예를 들어 보면, ‘비동기 (asynchronous)’ 연산을 시작시키는 함수들은 ‘완료 처리자 (completion handler)’ 로 클로저 인자를 취하는 경우가 많습니다. 함수는 연산을 시작시키고 반환하지만, 클로저는 연산이 완료될 때까지 호출되지 않습니다-나중에 호출하기 위해선, 클로저가 벗어날 필요가 있습니다. 예를 들면 다음과 같습니다:
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completion: @escaping () -> Void) {
  completionHandlers.append(completion)
}


func someFunctionWithNonescapingClosure1(closure: () -> Void) {
  closure()
}

class SomeClass {
  var x = 0
  func doSomething() {
    someFunctionWithEscapingClosure { self.x = 100 }
    someFunctionWithNonescapingClosure1 { x = 200 }
  }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// "200" 을 인쇄합니다.

completionHandlers.first?()
print(instance.x)
// "100" 을 인쇄합니다.


class SomeOtherClass {
  var x = 10
  func doSomething() {
    someFunctionWithEscapingClosure { [self] in x = 100 }
    someFunctionWithNonescapingClosure1 { x = 200 }
  }
}



struct SomeStruct {
  var x = 10
  mutating func doSomething() {
    someFunctionWithNonescapingClosure1 { x = 200 }  // Ok
   // someFunctionWithEscapingClosure { x = 100 }     // Error
  }
}

















//: [Next](@next)
