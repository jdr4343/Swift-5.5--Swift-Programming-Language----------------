//: [Previous](@previous)

import Foundation

//Instance Methods (인스턴스 메소드)
//인스턴스 메소드 (instance methods) 는 특정 클래스, 구조체, 또는 열거체의 인스턴스에 속해 있는 함수입니다.
//이는, 인스턴스 속성에 접근하고 수정하는 방법을 제공하거나, 아니면 인스턴스 목적과 관련된 기능을 제공함으로써, 해당 인스턴스의 기능을 지원합니다.

//인스턴스 메소드는, Functions (함수) 에서 설명한 것처럼, 구문 표현이 함수와 정확하게 똑같습니다.
//인스턴스 메소드는 자신이 속한 타입의 ‘여는 중괄호’ 와 ‘닫는 중괄호’ 내에서 작성합니다.
//인스턴스 메소드는 해당 타입의 모든 다른 인스턴스 메소드와 속성에 대한 암시적인 접근을 가집니다.
//인스턴스 메소드는 자신이 속한 타입의 지정된 인스턴스에 대해서만 호출할 수 있습니다.
//기존 인스턴스 없이 독립적으로 호출할 수는 없습니다.

//다음은, 동작이 발생한 횟수를 세는데 사용할 수 있는, 간단한 Counter 클래스를 정의하는 예제입니다:
class Counter {
  var count = 0
  func increment() {
    count += 1
  }
  func increment(by amount: Int) {
    count += amount
  }
  func reset() {
    count = 0
  }
}

//Counter 클래스는 세 인스턴스 메소드를 정의합니다:

//increment() 는 ‘횟수 (counter)’ 를 1 만큼 증가 시킵니다.
//increment(by : Int) 는 ‘횟수’ 를 ‘지정된 정수량’ 만큼 증가 시킵니다.
//reset() 은 ‘횟수’ 를 0 으로 재설정 합니다.

let counter = Counter()
// 초기 횟수 값은 0 입니다.
counter.increment()
// 횟수 값은 이제 1 입니다.
counter.increment(by: 5)
// 횟수 값은 이제 6 입니다.
counter.reset()
// 횟수 값은 이제 0 입니다.




















//: [Next](@next)

