//: [Previous](@previous)

import Foundation

//Initializer Delegation for Value Types (값 타입을 위한 초기자의 위임)

//초기자는 인스턴스 초기화의 일부를 다른 초기자를 호출하여 수행할 수 있습니다. 초기자 위임 (initializer delegation) 이라고 하는, 이 과정은, 여러 초기자들 간에 코드가 중복되는 것을 피하도록 합니다.

//초기자 위임의 작업 방법, 및 허용된 위임 형식에 대한 규칙은, 값 타입인지 클래스 타입인지에 따라 다릅니다.
//(구조체와 열거체 같은) 값 타입은 상속을 지원하지 않으므로, 초기자 위임 과정이 상대적으로 간단한데, 직접 제공하는 또 다른 초기자로만 위임할 수 있기 때문입니다.
//하지만, 클래스는, Inheritance (상속) 에서 설명한 것처럼, 다른 클래스를 상속할 수 있습니다. 이는 클래스의 경우 초기화 동안 자신이 상속한 모든 저장 속성에 적합한 값을 할당했음을 보장하는 추가적인 책임을 진다는 의미입니다.


//‘값 타입’ 에 대해서는, 자신만의 사용자 정의 초기자를 작성할 때 동일한 값 타입에 있는 다른 초기자를 참조하기 위해 self.init 을 사용합니다. self.init 은 초기자 내에서만 호출할 수 있습니다.
//값 타입에 ‘사용자 정의 초기자’ 를 정의한 경우, 더 이상 해당 타입에 대한 ‘기본 초기자’ (또는, 구조체라면, 멤버 초기자) 에 접근할 수 없음을 기억하기 바랍니다.

struct Size {
  var width = 0.0, height = 0.0
}
struct Point {
  var x = 0.0, y = 0.0
}

//아래의 Rect 구조체는-기본 값 ‘0’ 으로 초기화된 origin 과 size 속성 값을 사용하거나, 또는 원점과 크기를 지정하거나, 아니면 중심 점과 크기를 지정하는-세 방법 중 하나로 초기화할 수 있습니다.
struct Rect {
  var origin = Point()
  var size = Size()
  init() {}
    // 첫번째 Rect 초기자인, init() 은, 구조체가 자신만의 사용자 정의 초기자를 가지지 않았다면 부여 받았을 ‘기본 초기자’ 와 기능이 똑같습니다.
    //이 초기자는, {} 라는 빈 중괄호 쌍으로 표현된, 빈 본문을 가지고 있습니다.
    //이 초기자를 호출하면 origin 과 size 속성이 둘 다 Point(x: 0.0, y: 0.0) 과 Size(width: 0.0, height: 0.0) 라고 자신의 속성 정의에 있는 기본 값으로 초기화된 Rect 인스턴스를 반환합니다:
  init(origin: Point, size: Size) {
    self.origin = origin
    self.size = size
  }
  init(center: Point, size: Size) {
    let originX = center.x - (size.width / 2)
    let originY = center.y - (size.height / 2)
    self.init(origin: Point(x: originX, y: originY), size: size)
  }
}


let basicRect = Rect()
// basicRect 의 원점은 (0.0, 0.0) 이고 크기는 (0.0, 0.0) 입니다.

let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
// originRect 의 원점은 (2.0, 2.0) 이고 크기는 (5.0, 5.0) 입니다.

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
// centerRect 의 원점은 (2.5, 2.5) 이고 크기는 (3.0, 3.0) 입니다.











//: [Next](@next)
