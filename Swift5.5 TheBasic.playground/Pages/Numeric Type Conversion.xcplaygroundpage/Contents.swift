//: [Previous](@previous)

import Foundation

//Numeric Type Conversion (수치 타입 변환)

//코드에서 모든 일반-용도의 정수 상수와 변수는, 음수가 아님을 알더라도, Int 타입을 사용합니다.
//기본 정수 타입’ 을 사용하면 코드의 정수 상수와 변수가 즉시 ‘상호 호환 가능 (interoperable)’ 하며 ‘정수 글자 값’ 으로 추론한 타입과 일치할 것임을 의미합니다.

//Integer Conversion (정수 변환)
//각 수치 타입은 서로 다른 범위의 값을 저장할 수 있기 때문에, 수치 타입 변환은 반드시 각 경우마다 직접 선택해야 합니다.
//지정된 하나의 수치 타입을 또 다른 것으로 변환하려면, 원하는 타입의 새로운 수를 기존 값으로 초기화 합니다.

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
//이제 ‘더히기’ 의 양쪽 모두 UInt16 타입이므로, 더하기가 가능해집니다. 출력 상수 (twoThousandAndOne) 는 UInt16 타입이라고 추론되는데, 두 UInt16 값의 합계이기 때문입니다.

//Integer and Floating-Point Conversion (정수와 부동-소수점 수 변환)
//정수와 부동-소수점 수치 타입 간의 변환은 반드시 명시적으로 해야 합니다:
let Inta = 32
let Doubleb = 1.232131
let IntaDoubleb = Double(Inta) + Doubleb

//부동-소수점 수에서 정수로의 변환도 반드시 명시적으로 해야 합니다. Double 이나 Float 값으로 정수 타입을 초기화 할 수 있습니다
Int(IntaDoubleb)
//새로운 정수 값을 초기화 할 때는 부동-소수점 값이 항상 잘립니다. 이는 4.75 는 4 가, -3.9 는 -3 이 된다는 의미입니다.



//: [Next](@next)
