//: [Previous](@previous)

import Foundation
//Optional Tuple Return Types (옵셔널 튜플 반환 타입)

//함수가 ‘튜플 타입’ 을 반환할 때 잠재적으로 전체 ‘튜플’ 이 “값이 없을 (no value)” 수도 있는 경우, 전체 ‘튜플’ 이 nil 일 수 있다는 사실을 반영하기 위해 ‘옵셔널 (optional) 튜플 반환 타입’ 을 사용할 수 있습니다.
//‘옵셔널 튜플 반환 타입’ 은 튜플 타입의 ‘닫는 괄호’ 뒤에, (Int, Int)? 나 (String, Int, Bool)? 처럼, 물음표를 붙여서 작성합니다.

//빈 배열을 안전하게 처리하려면, minMax(array:) 함수를 ‘옵셔널 튜플 반환 타입’ 으로 작성하며 배열이 비었을 때는 nil 값을 반환합니다
//함수가 전달받은 배열이 빈 배열을 담고 있다면 minMax(array:) 함수는, array[0] 에 접근하려고 할 때 ‘실행시간 에러’ 를 발생시킬 것입니다.비어있을 가능성이 있다면 안전성 검사를 해야합니다.


func minMax(array: [Int]) -> (min: Int, max: Int)? {
  if array.isEmpty { return nil }//안전성 검사
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count] {
    if value < currentMin {
      currentMin = value
    } else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
  print("min is \(bounds.min) and max is \(bounds.max)")
}
// "min is -6 and max is 109" 를 인쇄합니다.

//Functions With an Implicit Return (암시적으로 반환하는 함수)
//함수의 전체 본문이 ‘단일 표현식’ 인 경우, 함수는 해당 표현식을 암시적으로 반환합니다. 예를 들어, 아래의 두 함수는 작동 방식이 같습니다:



func greeting(for person: String) -> String {
  "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// "Hello, Dave!" 를 인쇄합니다.

func anotherGreeting(for person: String) -> String {
  return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))
// "Hello, Dave!" 를 인쇄합니다.

//greeting(for:) 함수의 전체 정의가 반환하는 인사말 메시지인데, 이는 이런 ‘줄인 형식 (shorter form)’ 을 사용할 수 있다는 의미입니다. anotherGreeting(for:) 함수는, 더 긴 함수 같이 return 키워드를 사용하여, 똑같은 인사말 메시지를 반환합니다. return 줄 하나로만 작성된 함수는 어떤 것이든 return 을 생략할 수 있습니다.


//: [Next](@next)
