//: [Previous](@previous)

import Foundation
class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

//Preventing Overrides (재정의 막기)
//메소드, 속성, 또는 첨자 연산은 최종 (final) 이라고 표시함으로써 ‘재정의’ 되는 것을 막을 수 있습니다. 이렇게 하려면 (final var, final func, final class func, 및 final subscript 처럼) 메소드, 속성, 또는 첨자 연산의 ‘도입자 (introducer)’ 키워드 앞에 ‘final 수정자 (modifier)’ 를 작성하면 됩니다.

//‘최종’ 메소드, 속성, 또는 첨자 연산을 재정의하려는 어떤 시도도 컴파일-시간 에러라고 보고합니다. 클래스의 ‘익스텐션 (extension)’ 에서 추가한 메소드, 속성, 또는 첨자 연산도 ‘익스텐션 (extension)’ 정의 내에서 ‘최종’ 이라고 표시할 수 있습니다.

//클래스 정의에 있는 class 키워드 앞에 ‘final 수정자’ 를 (final class 처럼) 작성함으로써 전체 클래스를 ‘최종’ 이라고 표시할 수 있습니다. ‘최종 클래스’ 로 ‘하위 클래스’ 를 만들려는 어떤 시도도 컴파일-시간 에러라고 보고합니다.

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
}
//Rectangle class를 상속할 square class를 선언하겠습니다.

final class Square: Rectangle {
    //이렇게 되면 3개의 class가 상속계층을 구성합니다. Rectangle는 Figure를 상속받고 square class는 Rectangle를 상속받습니다.
    //모든 class는 상속의 대상이 될수있지만 경우에따라서 상속을 금지해야하는때가 있는데 그럴때 class 앞에 final 키워드를 추가합니다.
    //이런 class를 상속이 금지된 final class라고 합니다.
}

//: [Next](@next)
