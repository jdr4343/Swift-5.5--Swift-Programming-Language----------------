//: [Previous](@previous)

import Foundation

//Defining a Base Class (기초 클래스 정의하기)
//또 다른 클래스를 상속하지 않는 클래스는 어떤 것이든 기초 클래스 (base class)혹은 (super class)라고 합니다.

//아래 예제는 Vehicle 이라는 ‘base class’ 를 정의합니다.


class Vehicle {
  var currentSpeed = 0.0
  var description: String {
    return "traveling at \(currentSpeed) miles per hour"
  }
  func makeNoise() {
    // 아무 것도 안합니다 - 임의의 차량은 소음을 만들 필요가 없습니다
  }
}
//Vehicle 기초 클래스는 makeNoise 라는 메소드도 정의합니다. 이 메소드는 실제로 ‘기초 Vehicle 인스턴스’ 를 위해서는 어떤 것도 하지 않지만, 나중에 Vehicle 의 ‘하위 클래스’ 에서 사용자화 될 것입니다:

//Vehicle 의 새로운 인스턴스는, 타입 이름 뒤에 빈 괄호를 붙여서 작성하는, 초기자 구문 표현 (initializer syntax) 으로 생성합니다:

let someVehicle = Vehicle()

//새 Vehicle 인스턴스를 생성했으면, 차량의 현재 속도를 사람이-이해 가능한 설명으로 인쇄하기 위해 description 속성에 접근할 수 있습니다:
someVehicle.currentSpeed = 12
print("Vehicle: \(someVehicle.description)")
// "Vehicle: traveling at 12 miles per hour" 를 인쇄합니다.








//: [Next](@next)
