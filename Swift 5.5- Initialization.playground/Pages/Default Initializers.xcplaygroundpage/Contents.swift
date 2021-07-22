//: [Previous](@previous)

import Foundation

//Default Initializers (기본 초기자)
//스위프트는 모든 속성에 ‘기본 값’ 을 제공면서 자체로는 단 하나의 초기자도 제공하지 않는 어떤 구조체나 클래스든 ‘기본 초기자 (default initializer)’ 를 제공합니다. ‘기본 초기자’ 는 단순히 모든 속성을 기본 값으로 설정하는 것으로 새로운 인스턴스를 생성합니다.

class ShoppingListItem {
  var name: String?
  var quantity = 1
  var purchased = false
}
var item = ShoppingListItem()

//ShoppingListItem 클래스는 모든 속성이 기본 값을 가지고 있기 때문에, 그리고 ‘상위 클래스’ 를 가지지 않는 ‘기초 클래스’ 이기 때문에,
//ShoppingListItem 은 모든 속성을 기본 값으로 설정하는 것으로 새로운 인스턴스를 생성하는 ‘기본 초기자’ 구현을 자동으로 가지게 됩니다.


//Memberwise Initializers for Structure Types (구조체 타입을 위한 멤버 초기자)

//구조체 타입이 자신만의 초기자를 직접 정의하지 않은 경우라면 멤버 초기자 (memberwise initializer) 를 자동으로 부여 받습니다. ‘기본 초기자’ 와는 달리, 구조체는 ‘기본 값’ 이 없는 저장 속성을 가진 경우에도 ‘멤버 초기자’ 를 부여 받습니다.

//멤버 초기자는 새 구조체 인스턴스의 ‘멤버 속성’ 을 초기화하는 ‘줄임 표현법’ 입니다. 새 인스턴스의 속성을 위한 초기 값은 ‘이름’ 으로써 ‘멤버 초기자’ 에 전달할 수 있습니다.


//Size 구조체는, 새 Size 인스턴스를 초기화하는데 사용할 수 있는, ‘init(width:height:) 멤버 초기자’를 자동으로 부여 받습니다:
struct Size {
  var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
//멤버 초기자’ 를 호출할 때는, 기본 값을 가진 어떤 속성의 값도 생략할 수 있습니다.
//Size 구조체는 height 와 width 속성 둘 다 기본 값을 가집니다. 어느 한 속성 또는 두 속성 다 생략할 수 있으며, 생략한 것에는 초기자가 기본 값을 사용합니다

let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)
// "0.0 2.0" 를 인쇄합니다.

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)
// "0.0 0.0" 를 인쇄합니다.














//: [Next](@next)
