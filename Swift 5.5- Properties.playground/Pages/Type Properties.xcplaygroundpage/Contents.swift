//: [Previous](@previous)

import Foundation
//Type Properties (타입 속성)
//‘인스턴스 속성’ 은 특정 타입의 인스턴스에 속해 있는 속성입니다. 해당 타입의 새로운 인스턴스를 생성할 때마다, 다른 인스턴스와는 구분된, 자신만의 속성 값 집합을 가집니다.

//해당 타입의 어떤 한 인스턴스가 아닌, 타입 자체에 속해 있는 속성을 정의할 수도 있습니다. 해당 타입의 인스턴스를 얼마나 많이 만들던, 이 속성의 복사본은 단 한 개만 있을 것입니다. 이러한 종류의 속성을 타입 속성 (type properties) 이라고 합니다.

//타입 속성은 모든 인스턴스가 사용할 수 있는 ‘상수 속성’ 이나 해당 타입의 모든 인스턴스에 전역인 값을 저장하는 ‘변수 속성’ 처럼, 특정 타입의 모든 인스턴스에 ‘보편적인 (universal)’ 값을 정의하는데 유용합니다.


//Type Property Syntax (타입 속성 구문 표현)

//스위프트의, 타입 속성은, 타입 외곽 중괄호 내의, 타입 정의 부분에서 작성하며, 각 타입 속성은 자신이 지원하는 타입으로 영역이 정해집니다.
//타입 속성은 static 키워드로 정의합니다. 클래스 타입에 대한 ‘계산 타입 속성’ 에서는, 하위 클래스가 사위 클래스의 구현을 ‘재정의 (override)’ 하는 것을 허용하기 위해 class 키워드를 대신 사용할 수 있습니다.

//아래 예제는 ‘저장 타입 속성’ 과 ‘계산 타입 속성’ 에 대한 구문 표현을 보여줍니다:
struct SomeStructure {
  static var storedTypeProperty = "Some value."
    var equalStordType = ""
  static var computedTypeProperty: Int {
    return 1
  }
}
enum SomeEnumeration {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 6
  }
}
class SomeClass {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 27
  }
  class var overrideableComputedTypeProperty: Int {
    return 107
  }
}

//Querying and Setting Type Properties (타입 속성 조회하기와 설정하기)
//타입 속성은, 인스턴스 속성에서와 같이, ‘점 구문 (dot syntax)’ 으로 조회하고 설정합니다. 하지만, 타입 속성은, 해당 타입의 인스턴스에 대해서가 아니라, 타입 (type) 에 대해서 조회하고 설정합니다. 예를 들면 다음과 같습니다:

let equal = SomeStructure(equalStordType: "Some value")
print(equal.equalStordType)
//아래구문과 동치 이렇듯이 static키워드를 사용하면 편하게 호출 할수 있습니다
print(SomeStructure.storedTypeProperty)
// "Some value." 를 인쇄합니다.
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// "Another value." 를 인쇄합니다.
print(SomeEnumeration.computedTypeProperty)
// "6" 를 인쇄합니다.
print(SomeClass.computedTypeProperty)
// "27" 를 인쇄합니다.


//이어지는 예제는 다수 음향 채널에 대한 ‘음향 측정기 (audio level meter)’ 를 모델링하는 구조체로 두 개의 ‘저장 타입 속성’ 사용합니다. 각 채널은 0 에서 10 에 이르는 정수 ‘음량 (audio level)’ 를 가집니다.

struct AudioChannel {
  static let thresholdLevel = 10
  static var maxInputLevelForAllChannels = 0
  var currentLevel: Int = 0 {
    didSet {
      if currentLevel > AudioChannel.thresholdLevel {
        // 새로운 음량의 상한을 임계 값까지로 정합니다.
        currentLevel = AudioChannel.thresholdLevel
      }
      if currentLevel > AudioChannel.maxInputLevelForAllChannels {
        // 이를 전체에 대한 새로운 최대 입력량으로 저장합니다.
        AudioChannel.maxInputLevelForAllChannels = currentLevel
      }
    }
  }
}
//AudioChannel 구조체는, ‘스테레오 음향 시스템’ 의 음량을 표현하는, leftChannel 과 rightChennel 이라는 두 ‘음향 채널’ 을 생성하기 위해 사용할 수 있습니다:

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

//왼쪽 (left) 채널의 currentLevel 을 7 로 설정하면, ‘maxInputLevelForAllChannels 타입 속성’ 이 7 로 갱신되는 것을 볼 수 있습니다:

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
// "7" 을 인쇄합니다.
print(AudioChannel.maxInputLevelForAllChannels)
// "7" 을 인쇄합니다.


//오른쪽 (right) 채널의 currentLevel 을 11 로 설정하려고 하면, 오른쪽 채널의 currentLevel 속성이 10 이라는 최대 값으로 상한이 정해지고, ‘maxInputLevelForAllChannels 타입 속성’ 이 10 으로 갱신되는 것을 볼 수 있습니다:

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
// "10" 을 인쇄합니다.
print(AudioChannel.maxInputLevelForAllChannels)
// "10" 을 인쇄합니다.












//: [Next](@next)
