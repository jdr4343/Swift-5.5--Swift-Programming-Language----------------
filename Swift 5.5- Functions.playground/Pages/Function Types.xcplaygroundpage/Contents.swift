//: [Previous](@previous)

import Foundation

//Function Types (함수 타입)
//모든 함수는, 함수의 매개 변수 타입들과 반환 타입으로 이루어진, 지정된 함수 타입 (function type) 을 가집니다.

func addTwoInts(_ a: Int, _ b: Int) -> Int {
  return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
  return a * b
}
//이 두 함수 모두의 타입은 (Int, Int) -> Int 입니다. 이는 다음 처럼 이해할 수 있습니다:
//“둘 다 Int 타입인, 매개 변수 두 개를 가지며, Int 타입의 값을 반환하는 함수.”

//다음은, 매개 변수 또는 반환 값이 없는 함수에 대한, 또 다른 예제입니다:

func printHelloWorld() {
  print("hello, world")
}
//이 함수의 타입은 () -> Void, 또는 “매개 변수가 없고, Void 를 반환하는 함수” 입니다.



//Using Function Types (함수 타입 사용하기)
//함수 타입은 스위프트의 다른 타입과 똑같은 것처럼 사용할 수 있습니다. 예를 들어, 상수나 변수를 함수 타입으로 정의하고 해당 변수에 적절한 함수를 할당할 수 있습니다:
addTwoInts(1, 3)
//두 Int 값을 취해서, Int 값을 반환하는 함수
var mathFunction: (Int, Int) -> Int = addTwoInts
//“mathFunction 이라는 변수를 정의하는데, 이는 ‘두 Int 값을 취해서, Int 값을 반환하는 함수’ 타입 입니다. 이 새로운 변수가 addTwoInts 라는 함수를 참조하도록 설정합니다.”
mathFunction(2, 3)

//함수 아닌 타입과 똑같은 방식으로, 일치하는 타입을 가진 서로 다른 함수를 같은 변수에 할당할 수 있습니다.

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
// "Result: 6" 을 인쇄합니다.

//다른 타입에서 처럼, 함수를 상수나 변수에 할당할 때 함수의 타입을 스위프트가 추론하게 내버려둘 수 있습니다.
let anotherMathFunction = addTwoInts


//Function Types as Parameter Types (매개 변수 타입으로써의 함수 타입)

//(Int, Int) -> Int 와 같은 함수 타입을 다른 함수에 대한 매개 변수 타입으로 사용할 수 있습니다. 이는 함수를 호출할 때 함수를 호출하는 쪽에서 함수 구현의 일부분을 제공할 수 있게 해줍니다.

//다음은 위에 있는 수학 함수의 결과를 인쇄하는 예제입니다:

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
  print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// "Result: 8" 를 인쇄합니다.

//Function Types as Return Types (반환 타입으로써의 함수 타입)
//함수 타입은 또 다른 함수의 반환 타입으로 사용할 수 있습니다. 이렇게 하려면 반환하는 함수의 ‘반환 화살표 (->)’ 바로 뒤에 ‘완전한 함수 타입’ 을 작성하면 됩니다.
//다음 예제는 stepForward(_:) 와 stepBackward(_:) 라는 두 개의 간단한 함수를 정의합니다. stepForward(_:) 함수는 입력 값보다 하나 큰 값을 반환하고, stepBackward(_:) 함수는 입력 값보다 하나 작은 값을 반환합니다. 두 함수 다 (Int) -> Int 타입입니다:

func stepForward(_ input: Int) -> Int {
  return input + 1
}
func stepBackward(_ input: Int) -> Int {
  return input - 1
}
//다음은, 반환 타입이 (Int) -> Int 인, chooseStepFunction(backward:) 라는 함수입니다. chooseStepFunction(backward:) 함수는 backward 라는 ‘불리언 (Boolean)’ 매개 변수에 기초하여 stepForward(_:) 함수 또는 stepBackward(_:) 함수를 반환합니다:

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  return backward ? stepBackward : stepForward
}
//이제 chooseStepFunction(backward:) 를 사용하여 한 쪽 또는 다른 쪽 방향으로 한 단계 이동하는 함수를 구할 수 있습니다:

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero 는 이제 stepBackward() 함수를 참조합니다.
//위 예제는 currentValue 라는 변수가 0 에 점점 더 가깝게 이동하려면 필요한 방향이 양인지 음인지 결정합니다. currentValue 는 초기 값으로 3 을 가지고 있는데, 이는 currentValue > 0 이 true 를 반환하여, chooseStepFunction(backward:) 가 stepBackward(_:) 함수를 반환하도록 함을 의미합니다. 반환한 함수에 대한 참조는 moveNearerToZero 라는 상수에 저장됩니다.

//이제 moveNearerToZero 가 올바른 함수를 참조하므로, 0 까지 세는데 사용할 수 있습니다:

print("Counting to zero:")
// 'zero (영)' 까지 셉니다:
while currentValue != 0 {
  print("\(currentValue)... ")
  currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// 3...
// 2...
// 1...
// zero!






//: [Next](@next)
