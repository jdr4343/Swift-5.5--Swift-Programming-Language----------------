//: [Previous](@previous)

import Foundation

//Modifying Value Types from Within Instance Methods (인스턴스 메소드 내에서 값 타입 수정하기)

//구조체와 열거체는 값 타입 (value types) 입니다. 기본적으로, 값 타입의 속성은 인스턴스 메소드 내에서 수정할 수 없습니다.
//하지만, 특정 메소드 내에서 구조체나 열거체의 속성을 수정할 필요가 있으면, 해당 메소드를 위해 ‘변경 (mutating) 작동 방식’ 을 직접 선택할 수 있습니다.
//메소드 내에서 메소드가 속성을 변경 할 있으며, 새로 바뀐 것은 어떤 것이든 메소드가 끝날 때 원본 구조체에 다시 작성합니다.
//메소드는 완전히 새로운 인스턴스를 자신의 self 속성 에 할당할 수도 있는데, 메소드가 끝날 때 이 새로운 인스턴스가 기존 것을 대체할 것입니다.


//이런 작동 방식은 해당 메소드의 func 키워드 앞에 mutating 키워드를 붙임으로써 직접 선택할 수 있습니다:

struct Point {
  var x = 0.0, y = 0.0
  mutating func moveBy(x deltaX: Double, deltaY: Double) {
    x += deltaX
    y += deltaY
  }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, deltaY: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// "The point is now at (3.0, 4.0)" 를 인쇄합니다.
// "The point is now at (3.0, 4.0)" 를 인쇄합니다.

//속성을 수정할 수 있도록 mutating 키워드가 정의에 추가되어 있습니다.









//: [Next](@next)
