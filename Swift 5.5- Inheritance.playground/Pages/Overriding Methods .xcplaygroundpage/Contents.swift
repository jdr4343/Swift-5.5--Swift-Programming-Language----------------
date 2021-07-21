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

//Overriding Methods (메소드 재정의하기)
//상속한 인스턴스 메소드나 타입 메소드는 하위 클래스에서 맞춤식 구현이나 대체 구현을 제공하기 위해 메소드를 ‘재정의’ 할 수 있습니다.


//다음 예제는 Train 이라는 Vehicle 의 새로운 하위 클래스를 정의하는데, 이는 Train 이 Vehicle 에서 상속한 makeNoise() 메소드를 재정의합니다:

class Train: Vehicle {
  override func makeNoise() {
    print("Choo Choo")
  }
}


//새 Train 인스턴스를 생성하고 makeNoise() 메소드를 호출하면, Train 하위 클래스 버전의 메소드가 호출되는 것을 볼 수 있습니다:
let vegin = Vehicle()
let train = Train()
train.makeNoise()
// "Choo Choo" 를 인쇄합니다.
vegin.makeNoise()
//: [Next](@next)
