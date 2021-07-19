//: [Previous](@previous)

import Foundation
//Logical Operators (논리 연산자)
//논리 연산자 (logical operators) 는 ‘불리언 논리 (Boolean logic) 값’ true 와 false 를 수정하거나 조합합니다.

//논리 부정 (Logical NOT; !a)
//논리 곲 (Logical AND; a && b)
//논리 합 (Logical OR; a || b

//Logical NOT Operator (논리 부정 연산자)
//‘논리 부정 연산자 (logical NOT operator; !a)’ 는 ‘불리언 (Boolean)’ 값을 거꾸로 만들어서 true 는 false 가 되고, false 는 true 가 됩니다.
let allowedEntry = false
if !allowedEntry {
  print("ACCESS DENIED")
}
// "ACCESS DENIED" 를 인쇄합니다.

//Logical AND Operator (논리 곱 연산자)
//‘논리 곱 연산자 (logical AND operator; a && b)’ 는 두 값 모두 반드시 true 여야만 전체적인 표현식도 true 가 되는 ‘논리 표현식 (logical expressions)’ 을 생성합니다.
//다음 예제는 두 개의 Bool 값을 고려하며 두 값 모두 true 일 때만 접근을 허용합니다:

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
// "ACCESS DENIED" 를 인쇄합니다.


//Logical OR Operator (논리 합 연산자)
//‘논리 합 연산자 (logical OR operator; a || b)’ 는 두 개의 인접한 ‘파이프 문자 (|)’ 로 만든 ‘중위 (infix) 연산자’ 입니다. 이를 사용하여 두 값 중 하나 (one) 만 true 면 전체적인 표현식이 true 가 되는 ‘논리 표현식’ 를 생성합니다.
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
// "Welcome!" 을 인쇄합니다.


//Combining Logical Operators (논리 연산자 조합하기)
//여러 논리 연산자를 조합하여 더 긴 ‘복합 표현식 (compound expressions)’ 을 생성할 수 있습니다:
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
// "Welcome!" 을 인쇄합니다.

//Explicit Parentheses (명시적인 괄호)
//꼭 필요하진 않을 때라도, 복잡한 표현식의 의도를 이해하기 더 쉽도록, ‘괄호 (parentheses)’ 를 포함시키는 것이 유용할 때가 있습니다. 위 ‘출입문 접근’ 예제에서, 의도를 명시적으로 만들려면 복합 표현식의 첫 번째 부분에 괄호를 추가하는 것이 좋습니다:

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
// "Welcome!" 를 인쇄합니다.\
//괄호는 처음 두 값이 전체적인 논리에서 ‘별도로 가능한 상태’ 로 고려된다는 것을 명확하게 만듭니다. 복합 표현식의 출력은 바뀌지 않지만, 전체적인 의도는 더 명확해 집니다.
//‘가독성 (readability)’ 은 항상 ‘간결함 (brevity)’ 보다 좋습니다; 의도를 명확하게 만드는데 도움이 될 때는 괄호를 사용하기 바랍니다.
//: [Next](@next)
