//: [Previous](@previous)

import Foundation

//Initializing an Empty String (빈 문자열 초기화하기)
//긴 문자열 제작을 시작하기 위해 먼저 빈 String 값을 생성하려면, 변수에 ‘빈 문자열 글자 값 (empty string literal)’ 을 할당하거나, 아니면 ‘초기화 구문 표현 (initializer syntax)’ 으로 새로운 String 인스턴스를 초기화합니다
var emptyString = ""                // 빈 문자열 글자 값 (empty string literal)
var empty2String = String()         // 초기화 구문 표현 (initializer syntax)
// 이 두 문자열은 모두 빈 것이며, 서로 같습니다.

//String 값이 비어 있는 지는 ‘불리언 (Boolean)’ 속성인 isEmpty 를 검사하여 알아냅니다:
emptyString.isEmpty
//: [Next](@next)
