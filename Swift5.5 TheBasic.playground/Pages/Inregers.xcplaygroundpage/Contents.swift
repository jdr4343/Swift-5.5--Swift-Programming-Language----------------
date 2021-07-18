//: [Previous](@previous)

import Foundation

//Integers (정수)
//정수 (integers) 는, 42 와 -23 같이, 분수 성분이 없는 수 전부를 말합니다. 정수는 부호 있는 (signed) 것 (양수, 0, 및 음수) 또는 부호 없는 (unsigned) 것 (양수, 및 0) 이 있습니다.

//Integer Bounds (정수의 경계)
//각 정수 타입의 최소 값과 최대 값은 min 과 max 속성으로 접근할 수 있습니다
let minValue = Int8.min
let maxValue = Int8.max

//Int (정수)
//64 비트 음수 정수
Int8.max

//UInt (부호없는 정수)
//양수만 저장하기 때문에 Int 보다 높은 값을 저장할수 있다
UInt8.max

//Floating-Point Numbers (부동-소수점 수)
//Double 은 64-비트 부동-소수점 수를 표현합니다.
//Float 은 32-비트 부동-소수점 수를 표현합니다.
//32bit 소수타입 Double Type 보다 낮은 6자리의 정밀도를 가진다.Double 은 15자리까지 정밀도를 가진다
var s: Float = 1.123124215124562676674645745
Float(s)
Double(s)

//: [Next](@next)
