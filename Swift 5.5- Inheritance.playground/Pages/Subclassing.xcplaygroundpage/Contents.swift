//: [Previous](@previous)

import Foundation

class Vehicle {
  var currentSpeed = 0.0
  var description: String {
    return "traveling at \(currentSpeed) miles per hour"
  }
  func makeNoise() {
    // 아무 것도 안합니다 - 임의의 차량은 소음을 만들 필요가 없습니다
  }
    
}//Subclassing (하위 클래스 만들기)
//하위 클래스 만들기 (subclassing) 는 기존 클래스를 기초로 하여 새로운 클래스를 만드는 행위입니다.
//하위 클래스 (subclass)’ 는 기존 클래스의 ‘성질 (characteristics)’ 들, 나중에 개량할 수 있는 것들, 을 상속합니다. 하위 클래스에서 새로운 성질을 추가할 수도 있습니다.


//하위 클래스가 상위 클래스를 가진다고 지시하려면, 하위 클래스의 이름을 상위 클래스 앞에 작성하고, ‘콜론 (colon)’ 으로 구분합니다:

//class SomeSubclass: SomeSuperclass {
  // 하위 클래스의 정의는 여기에 둡니다.
    


//다음 예제는, 상위 클래스가 Vehicle 인, Bicycle 이라는 하위 클래스를 정의합니다:

class Bicycle: Vehicle {
  var hasBasket = false
}

//새로운 Bicycle 클래스는, currentSpeed 와 description 속성 그리고 makeNoise() 메소드 같은, Vehicle 의 모든 성질들을 자동으로 가지게 됩니다.

//기본적으로, 새로 생성한 어떤 Bicycle 인스턴스도 ‘바구니 (basket)’ 를 가지지 않을 것입니다. 해당 인스턴스가 생성된 뒤에 특정 Bicycle 인스턴스에 대한 hasBasket 속성을 true 로 설정할 수 있습니다.

let bicycle = Bicycle()
bicycle.hasBasket = true


//Bicycle 인스턴스가 상속한 속성인 currentSpeed 를 수정할 수도 있으며, 인스턴스의 상속 속성인 description 을 조회할 수도 있습니다:

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
// "Bicycle: traveling at 15.0 miles per hour" 를 인쇄합니다.


//‘하위 클래스’ 자체도 하위 클래스를 만들 수 있습니다. 다음 예제는 “탠덤 (tandem)” 이라는 2-인승 자전거를 만들기 위해 Bicycle 의 하위 클래스를 생성합니다:

class Tandem: Bicycle {
  var currentNumberOfPassengers = 0
}
//Tandem 은 Bicycle 의 모든 속성과 메소드를 상속하는데, 차례대로 Vehicle 의 모든 속성과 메소드도 상속합니다. Tandem 하위 클래스는, 기본 값이 0 인, currentNumberOfPassengers 라는 새로운 저장 속성도 추가합니다.

//Tandem 의 인스턴스를 생성한 경우, 새로운 속성과 상속한 속성 어떤 것과도 작업할 수 있으며, Vehicle 에서 상속한 ‘읽기-전용’ description 속성을 조회할 수도 있습니다:

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")
// "Tandem: traveling at 22.0 miles per hour" 를 인쇄합니다.








//: [Next](@next)
