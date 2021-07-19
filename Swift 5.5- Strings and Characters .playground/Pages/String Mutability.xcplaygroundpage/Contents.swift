//: [Previous](@previous)

import Foundation
//String Mutability (문자열 변경 가능성)
//특정 String 이 수정 (또는 변경-mutated) 가능한지의 여부는, 이를 변수에 할당하거나 (이 경우 수정할 수 있음), 아니면 상수에 할당하는 것 (이 경우 수정할 수 없음) 으로, 지시합니다
var variableString = "Horse"
variableString += " and carriage"
// variableString 은 이제 "Horse and carriage" 입니다.

let constantString = "Highlander"
constantString += " and another Highlander"
// 이것은 컴파일-시간 에러를 보고합니다-상수 문자열은 수정할 수 없습니다 (a constant string cannot be modified)


//‘오브젝티브-C’ 와 ‘Cocoa’ 의 문자열 ‘변경 방식 (mutation)’ 과는 다른데, 이들은 문자열이 변경 가능함을 지시하기 위해 (NSString 와 NSMutableString 라는) 두 클래스 중 하나를 선택합니다.


//: [Next](@next)
