//: [Previous](@previous)

import Foundation

//Ternary Conditional Operator (삼항 조건 연산자)
//삼항 조건 연산자 (ternary conditional operator) 는 세 부분을 가진 특수한 연산자로, question ? answer1 : answer2 라는 형식을 취합니다.

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight 는 90 입니다. 삼항 연산자는 true 일경우 왼쪽을 false 일경우 오른쪽의 값을 줍니다.

//위 예제는 아래 코드의 ‘줄임 표현 (shorthand)’ 입니다:

let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
  rowHeight = contentHeight + 50
} else {
  rowHeight = contentHeight + 20
}
// rowHeight 는 90 입니다



//삼항 조건 연산자는 두 표현식 중에서 검토할 것을 고르는데 효율적인 ‘줄임 표현 (shorthand)’ 을 제공합니다.
//하지만, 삼항 조건 연산자를 주의해서 사용하기 바랍니다. 간결하다고 너무 남용하면 이해하기-어려운 코드를 만들게 됩니다.
//다중 삼항 조건 연산자를 하나의 복합 구문으로 조합하는 것은 피하도록 합니다


//: [Next](@next)
