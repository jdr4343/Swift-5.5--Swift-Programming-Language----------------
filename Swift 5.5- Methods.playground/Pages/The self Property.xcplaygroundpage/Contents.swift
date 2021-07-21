//: [Previous](@previous)

import Foundation
class Counter {
  var count = 0
  func increment() {
    count += 1
  }
  func increment(by amount: Int) {
    count += amount
  }
  func reset() {
    count = 0
  }
}


//The self Property (‘self’ 속성)
//타입의 모든 인스턴스는, 인스턴스 자체와 정확하게 같은 self 라는 ‘암시적인 (implicit) 속성’ 을 가집니다. self 속성은 현재 인스턴스를 자신의 인스턴스 메소드에서 참조하기 위해 사용합니다.

//위 예제의 increment() 메소드를 다음 같이 작성할 수도 있을 것입니다:
func increment() {
 // self.count += 1
}

//실제로, 코드에서 self 를 작성할 일은 거의 없습니다. self 를 명시적으로 작성하지 않은 경우, 스위프트는 메소드에서 이미 알고 있는 속성이나 메소드 이름을 사용할 때마다 현재 인스턴스의 속성이나 메소드를 참조하고 있다고 가정합니다.

//이 규칙에 대한 주요한 예외는 인스턴스 메소드에 대한 매개 변수 이름이 해당 인스턴스의 속성과 똑같은 이름을 가질 때마다 발생합니다.

//다음은, x 라는 ‘메소드 매개 변수’ 와 역시 x 인 ‘인스턴스 속성’ 사이의 모호함을 self 로 없앱니다:

struct Point {
  var x = 0.0, y = 0.0
  func isToTheRightOf(x: Double) -> Bool {
    return self.x > x
  }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
  print("This point is to the right of the line where x == 1.0")
}
// "This point is to the right of the line where x == 1.0" 을 인쇄합니다.
//self 접두사가 없으면, 스위프트가 두 x 모두 x 라는 ‘메소드 매개 변수’ 를 참조한다고 가정했을 것입니다.





//: [Next](@next)
