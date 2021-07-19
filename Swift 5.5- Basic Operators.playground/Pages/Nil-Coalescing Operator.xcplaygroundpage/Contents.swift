//: [Previous](@previous)

import Foundation

//Nil-Coalescing Operator (Nil-통합 연산자)
//nil-통합 연산자 (nil-coalescing operator; a ?? b) 는 옵셔널 a 가 값을 담고 있으면 포장을 풀고, a 가 nil 이면 기본 값인 b 를 반환합니다. 표현식 a 는 항상 옵셔널 타입입니다. 표현식 b 는 반드시 a 에 저장된 값과 타입이 일치해야 합니다.

//nil-통합 연산자’ 는아래 코드의 ‘줄임 표현 (shorthand)’ 입니다
//삼항연산자를 이용해 a가 nil이아니라면 언래핑된 a를 nil이라몀 b를 호출합니다.
var a: Int? = 3
let b = 0
a != nil ? a! : b

//아래 예제는 ‘기본 색상 이름’ 과 ‘사용자가-정의한 옵셔널 색상 이름’ 중 하나를 선택하기 위해 ‘nil-통합 연산자’ 를 사용합니다:

let defaultColorName = "red"
var userDefinedColorName: String?   // 기본 값은 nil 입니다.

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 이 nil 이므로, colorNameToUse 는 기본 값인 "red" 로 설정됩니다.

//만약 userDefinedColorName 에 nil 아닌 값을 할당한 다음 ‘nil-통합 연산자’ 검사를 다시 수행하면, 기본 값 대신 userDefinedColorName 안에 포장된 값을 사용합니다:

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 이 nil 이 아니므로, colorNameToUse 를 "green" 으로 설정합니다.
//앞에 있는게 먼저 평가되어 값을 수식하는것을 단락 회로 계산이라고 합니다.
//: [Next](@next)
