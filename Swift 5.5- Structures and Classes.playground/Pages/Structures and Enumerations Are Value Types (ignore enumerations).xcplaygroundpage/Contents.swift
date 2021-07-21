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


//Structures and Enumerations Are Value Types (구조체와 열거체는 값 타입입니다)
//값 타입 (value type) 은 변수나 상수에 할당될 때, 또는 함수에 전달될 때, 값이 복사되는 (copied) 타입입니다.

//Resolution 구조체를 사용하는, 다음 예제를 살펴봅시다:

let hd = Resolution(width : 1920, height : 1080)
var cinema = hd
//Resolution 은 구조체이기 때문에, 기존 인스턴스의 복사본 (copy) 을 만들며, 이 새 복사본을 cinema 에 할당합니다.
//hd 와 cinema 는 이제 너비와 높이가 똑같지만, 이면을 살펴보면 서로 완전히 다른 두 인스턴스입니다.

cinema.width = 2048
//cinema 의 width 속성을 검사하여 진짜 2048 로 바뀌었는지 봅니다:

print("cinema is now \(cinema.width) pixels wide")
// "cinema is now 2048 pixels wide" 를 인쇄합니다.
//하지만, 원본인 hd 인스턴스의 width 속성은 여전히 예전 값인 1920 을 가집니다:

print("hd is still \(hd.width) pixels wide")
// "hd is still 1920 pixels wide" 를 인쇄합니다.
//cinema 에 hd 의 현재 값을 부여할 때는, hd 에 저장된 값 (values) 이 새로운 cinema 인스턴스로 복사됩니다.
//똑같은 수치 값을 담은 완전히 분리된 두 인스턴스입니다. 하지만, 분리된 인스턴스이기 때문에, cinema 의 너비를 2048 로 설정하는 것은 hd 에 저장된 너비에 영향을 주지 않습니다


//열거체에도 똑같은 작동 방식이 적용됩니다












