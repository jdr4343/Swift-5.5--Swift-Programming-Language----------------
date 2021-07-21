//: [Previous](@previous)

import Foundation
class Vehicle {
  var currentSpeed = 0.0
  var description: String {
    return "traveling at \(currentSpeed) miles per hour"
  }
  func makeNoise() {
  }
}

//Overriding Properties (속성 재정의하기)
//상속한 인스턴스 속성이나 타입 속성은 해당 속성에 대해 자신만의 사용자 정의 획득자와 설정자를 제공하거나, 실제 속성 값이 바뀔 때 재정의한 속성이 관찰할 수 있도록 속성 관찰자를 추가하기 위해 ‘재정의’ 할 수 있습니다.



//Overriding Property Getters and Setters (속성의 획득자와 설정자 재정의하기)

//상속한 속성은, 그 속성이 원래 저장 속성으로 구현됐는지 계산 속성으로 구현됐는지에 상관없이, 어떤 (any) 것이든 재정의를 위해 ‘사용자 정의 획득자’ (적절한 경우, ‘설정자’ 까지) 를 제공할 수 있습니다.
// 상속한 속성의 본성이 ‘저장’ 인지 ‘계산’ 인지는 하위 클래스에서 알 수 없습니다-단지 상속한 속성이 정해진 이름과 타입을 가진다는 것만 압니다.
//상속한 ‘읽기-전용’ 속성은 하위 클래스에서 재정의하면서 획득자와 설정자 둘 다를 제공함으로써 ‘읽기-쓰기’ 속성이 되게 할 수 있습니다. 하지만, ‘읽기-쓰기’ 속성을 ‘읽기-전용’ 속성이 되게 할 수는 없습니다.


//다음 예제는 Car 라는, Vehicle 의 새로운 하위 클래스를, 정의합니다.
//Car 클래스는, 현재 ‘기어 (gear)’ 정보도 포함한 사용자 설명을 제공하기 위해, Vehicle 에서 상속한 description 속성도 재정의합니다
class Car: Vehicle {
  var gear = 1
  override var description: String {
    return super.description + " in gear \(gear)"
  }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")
// "Car: traveling at 25.0 miles per hour in gear 3" 를 인쇄합니다.
















//: [Next](@next)
