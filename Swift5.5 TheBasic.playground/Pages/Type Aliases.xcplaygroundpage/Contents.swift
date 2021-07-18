//: [Previous](@previous)

import Foundation

//Type Aliases (타입 별명)
//타입 별명 (type aliases) 은 기존 타입에 대한 ‘또 다른 이름 (alternative name)’ 을 정의합니다. ‘타입 별명’ 은 typealias 키워드로 정의합니다.

//타입 별명은, 크기가 외부 소스에서 정해진 자료와 작업할 때 처럼, 상황에 더 적절한 이름으로 기존 타입을 참조하고 싶을 때 유용합니다
typealias someNum = Int
let aNum: someNum = 123
aNum
//타입 별명을 한 번 정의하면, 원래 이름을 사용할 수 있는 곳이면 어디에서든 이 별명을 사용할 수 있습니다:
someNum.max
//: [Next](@next)
