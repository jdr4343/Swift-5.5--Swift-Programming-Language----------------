//: [Previous](@previous)

import Foundation

//Strings Are Value Types (문자열은 값 타입입니다)

//스위프트의 String 타입은 ‘값 타입 (value type)’ 입니다. 새로운 String 값을 생성하면, 해당 String 값은, 함수나 메소드에 전달될 때나 상수나 변수에 할당될 때, 복사 (copied) 됩니다.
//각 경우마다, 기존 String 값의 새로운 복사본이 생성되며, 원래 버전이 아니라, 이 새로운 복사본을 전달하거나 할당합니다. 값 타입은 Structure and Enumerations Are Value Types (구조체와 열거체는 값 타입입니다) 에서 설명합니다.

//스위프트 String 의 ‘기본적으로-복사하는 (copy-by-default)’ 작동 방식은 함수나 메소드가 String 값을 전달할 때, 이것이 어디서 왔든 상관없이, 정확한 String 값을 명확하게 가지도록 보장합니다.
//전달받은 문자열은 직접 수정하지 않는한 수정되지 않을 것임을 확신할 수 있습니다.

//그 이면을 살펴보면, 스위프트 컴파일러는 문자열 사용법을 최적화해서 실제 복사는 꼭 필요할 때만 일어납니다. 이는 값 타입인 문자열과 작업할 때도 항상 뛰어난 성능을 얻는다는 의미입니다.

//: [Next](@next)
