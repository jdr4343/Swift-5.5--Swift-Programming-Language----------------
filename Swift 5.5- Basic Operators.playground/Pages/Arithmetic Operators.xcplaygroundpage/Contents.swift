//: [Previous](@previous)

import Foundation

//Arithmetic Operators (산술 연산자)
//스위프트는 모든 수치 타입에 대해서 네 개의 표준 산술 연산자 (arithmetic operators) 를 지원합니다:

//더하기 (+)
//빼기 (-)
//곱하기 (*)
//나누기 (/)

1 + 2       // 3 과 같습니다.
5 - 3       // 2 와 같습니다.
2 * 3       // 6 과 같습니다.
10.0 / 2.5  // 4.0 과 같습니다.

//스위프트의 산술 연산자는 기본적으로 ‘값 넘침 (overflow)’ 을 허용하지 않습니다. 값 넘침 작동 방식은 (a &+ b 같은) 스위프트의 ‘값 넘침 연산자 (overflow operators)’ 를 사용하여 직접 선택할 수 있습니다.

//더하기 (addition) 연산자’ 는 ‘String 이어붙이기 (concatenation)’ 도 지원합니다.
"Hello" + " " + "Jihun" + "!"

//Remainder Operator (나머지 연산자)
//나머지 연산자 (remainder operator) (a % b) 는 a 를 b 배수 몇 개로 채울지 알아낸 다음 (나머지 (remainder) 라고 하는) 남아 있는 값을 반환합니다.
9 % 4    // 1 과 같습니다.
12 % 3
81 % 7 // 7 * 11 = 77   81 - 77 = 4


//Unary Minus Operator (단항 음수 연산자)
//수치 값의 부호는, 단항 음수 연산자 (unary minus operator) 라는, - 접두사를 사용하여, ‘전환할 (toggled)’ 수 있습니다
let three = 3
let minusThree = -three       // minusThree 는 -3 과 같습니다.
let plusThree = -minusThree   // plusThree 는 3 또는, "minus minus three" 와 같습니다.


//Unary Plus Operator (단항 양수 연산자)
//단항 양수 연산자 (unary plus operator; +) 는, 어떤 바뀜도 없이, 작용하는 값을 단순히 반환합니다
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix 는 -6 과 같습니다.

//: [Next](@next)
