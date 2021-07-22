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



























//: [Next](@next)
