//: [Previous](@previous)

import Foundation
struct Resolution {
  var width = 0
  var height = 0
}
class VideoMode {
  var resolution = Resolution()
  var interlaced = false
  var frameRate = 0.0
  var name: String?
}
let hd = Resolution(width : 1920, height : 1080)
var cinema = hd

//Classes Are Reference Types (클래스는 참조 타입입니다)
//값 타입과는 달리, 참조 타입 (reference types) 은 변수나 상수에 할당할 때, 또는 함수에 전달할 때, 복사하지 않습니다. 복사하는 대신, 기존과 똑같은 인스턴스에 대한 참조를 사용합니다.

//다음은, 위에서 정의한 VideoMode 클래스를 사용하는, 예제입니다:
//이 예제는 tenEighty 라는 새로운 상수를 선언하고 VideoMode 클래스의 새로운 인스턴스에 대한 참조를 설정합니다.
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

//다음으로, tenEighty 를, alsoTenEighty 라는, 새로운 상수로 할당하며, alsoTenEighty 의 ‘프레임 재생 속도’ 를 수정합니다:

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

//클래스가 참조 타입이기 때문에, tenEighty 와 alsoTenEighty 둘 다 실제로는 똑같은 (same) VideoMode 인스턴스를 참조합니다.
//실제로, 이들은, 아래 그림에 보인 것처럼, 똑같은 단일 인스턴스에 대한 서로 다른 두 이름일 뿐입니다.

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
// "The frameRate property of tenEighty is now 30.0" 를 인쇄합니다.


//Identity Operators (식별 연산자)
//클래스가 참조 타입이기 때문에, 이면을 살펴보면 다중 상수와 변수가 똑같은 단일 클래스의 인스턴스를 참조하는 것이 가능합니다.

//두 개의 상수나 변수가 정확하게 똑같은 클래스의 인스턴스를 참조하고 있는지를 알아내는 것이 유용할 때가 있습니다. 이를 위해, 스위프트는 두 개의 ‘식별 연산자’ 를 제공합니다:

//‘식별됨 (identical to; ===)’
//‘식별되지 않음 (not identical to; !==)’

//두 개의 상수나 변수가 똑같은 단일 인스턴스를 참조하는 지를 검사하려면 이 연산자들을 사용합니다:

if tenEighty === alsoTenEighty {
  print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
// "tenEighty and alsoTenEighty refer to the same VideoMode instance." 를 인쇄합니다



