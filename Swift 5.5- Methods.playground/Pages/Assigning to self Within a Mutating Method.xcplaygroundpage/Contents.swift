//: [Previous](@previous)

import Foundation
struct Point {
  var x = 0.0, y = 0.0
  mutating func moveBy(x deltaX: Double,y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")


//Assigning to self Within a Mutating Method (변경 메소드 내에서 ‘self’ 에 할당하기)
//‘변경 메소드’ 는 완전히 새로운 인스턴스를 ‘암시적인 self 속성’ 에 할당할 수 있습니다.

//위에 보인 Point 예제는 대신 다음 방식으로 작성할 수도 있을 것입니다
struct Point1 {
    var x = 0.0,  y = 0.0
  mutating func moveBy(x deltaX: Double, y deltaY: Double) {
    self = Point1(x: x + deltaX, y: y + deltaY)
  }
}
//이 버전의 moveBy(x:y:) 변경 메소드는 x 와 y 값이 ‘대상 (target)’ 위치로 설정된 새로운 구조체를 생성합니다.

//열거체에 대한 변경 메소드는 ‘암시적인 self 매개 변수’ 를 똑같은 열거체의 다른 ‘case 값’ 으로 설정할 수 있습니다:

enum TriStateSwitch {
  case off, low, high
  mutating func next() {
    switch self {
    case .off:
      self = .low
    case .low:
      self = .high
    case .high:
      self = .off
    }
  }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight 는 이제 .hight 입니다.
ovenLight.next()
// ovenLight 는 이제 .off 입니다.

//이 예제는 ‘3-상 스위치 (three-state switch)’ 에 대한 열거체를 정의합니다. 이 스위치는 next() 메소드를 호출할 때마다 세 가지의 서로 다른 ‘전원 상태 (off, low, 및 high)’ 사이를 순환합니다.











//: [Next](@next)
