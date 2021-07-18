//: [Previous](@previous)

import Foundation

//Type Safety and Type Inference (타입 안전 장치와 타입 추론 장치)

//스위프트는 타입-안전 (type-safe) 언어입니다. ‘타입 안전 언어’ 는 코드에서 작업할 값의 타입이 명확하다는 확신을 줍니다. 코드에서 String 이 필수인 경우, 실수로 Int 를 전달하는 것도 막아줍니다.

//스위프트는 타입 안전하므로, 코드를 컴파일할 때 타입 검사 (type checks) 를 수행해서 일치하지 않는 타입은 어떤 것이든 에러라고 표시합니다.

// 스위프트는 타입 추론 장치 (type inference) 를 사용하여 적절한 타입을 알아냅니다

let StringType = "Kf"
let IntType = 123
//스위프트는 항상 부동-소수점 수의 타입을 추론할 때 (Float 이 아니라) Double 을 선택합니다.
let DoubleType = 0.13


//: [Next](@next)
