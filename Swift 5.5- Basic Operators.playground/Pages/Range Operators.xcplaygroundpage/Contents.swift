//: [Previous](@previous)

import Foundation

//Range Operators (범위 연산자)
//스위프트는, 값의 범위를 표현하기 위한 ‘줄임말 (shortcuts)’ 인, 범위 연산자 (range operators) 몇 개를 포함합니다.


//Closed Range Operator (닫힌 범위 연산자)
//‘닫힌 범위 연산자 (closed range operator; a...b)’ 는 a 에서 b 에 이르는 범위를 정의하며, a 와 b 의 값도 포함합니다. a 의 값은 반드시 b 보다 크지 않아야 합니다.

for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25


//Half-Open Range Operator (반-열린 범위 연산자)
//‘반-열린 범위 연산자 (half-open range operator; a..<b)’ 는 a 에서 b 에 이르는 범위를 정의하지만, b 는 포함하지 않습니다. 반-열린 (half-open) 이라고 하는 것은 첫 번째 값은 담고 있지만, 최종 값은 담지 않기 때문입니다.

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
  print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack

//배열이 네 개의 항목을 담고 있지만, 0..<count 는, ‘반-열린 연산자’ 이기 때문에, (배열에 있는 마지막 항목의 색인인) 3 까지만 셉니다. 배열에 대해서는, Arrays (배열) 을 참고하기 바랍니다.

//One-Sided Ranges (한-쪽 범위)
//‘닫힌 범위 연산자’ 는 한쪽 방향으로  계속되는 범위-예를 들어, 2 부터 배열 끝까지 배열의 모든 원소를 포함하는 범위 등-을 위해 ‘또 다른 형식 (alternative form)’ 을 가집니다.
for name in names[2...] {
  print(name)
}
// Brian
// Jack

for name in names[...2] {
  print(name)
}
// Anna
// Alex
// Brian

//반-열린 범위 연산자’ 도 최종 값만 작성하는 ‘한-쪽 형식 (one-sided form)’ 을 가지고 있습니다. 양쪽에 값을 포함할 때와 마찬가지로, 이 최종 값은 범위의 일부가 아닙니다. 예를 들면 다음과 같습니다:
for name in names[..<2] {
  print(name)
}
// Anna
// Alex



//한-쪽 범위’ 는, ‘첨자 연산 (subscript)’ 뿐 아니라, 다른 상황에서도 사용할 수 있습니다. 첫 번째 값을 생략한 ‘한-쪽 범위’ 에는 동작을 반복할 수 없는데, 반복 동작을 어디서 시작해야할 지 명확하지 않기 때문입니다.
//최종 값을 생략한 ‘한-쪽 범위’ 에는 동작을 반복 할 수 (can) 있습니다; 하지만, 범위가 무한정 계속되기 때문에, 명시적인 종료 조건을 반복문에 확실히 추가해야 합니다. ‘한-쪽 범위’ 는, 아래 코드에서 보인 것처럼, 특정 값을 담고 있는 지도 검사할 수 있습니다.

let range = ...5
range.contains(7)   // false (거짓)
range.contains(4)   // true (참)
range.contains(-1)  // true (참)
//: [Next](@next)
