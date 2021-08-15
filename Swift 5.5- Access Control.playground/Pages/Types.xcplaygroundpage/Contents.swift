//: [Previous](@previous)

import Foundation

//Function Types (함수 타입)

//함수가 계산한 접근 수준이 기본적인 상황과 일치하지 않을 경우 함수 정의에서 명시적으로 접근 수준을 지정해야 합니다.
private func someFunction() -> (SomeInternalClass, SomePrivateClass) {
  // 함수 구현은 여기에 둡니다.
}


//Enumeration Types (열거체 타입)

//열거체의 ‘개별 case 값’ 은 자신이 속한 열거체와 똑같은 접근 수준을 자동으로 부여 받습니다. 개별 ‘열거체 case 값’ 마다 서로 다른 접근 수준을 지정할 수 없습니다.


public enum CompassPoint {
  case north
  case south
  case east
  case west
}

//Nested Types (중첩 타입)
//‘중첩 타입’ 의 접근 수준은, 자신을 ‘담은 (containing) 타입’ 이 ‘공용 (public)’ 이 아니라면, 자신을 ‘담은 타입’ 과 똑같습니다. 
//: [Next](@next)
