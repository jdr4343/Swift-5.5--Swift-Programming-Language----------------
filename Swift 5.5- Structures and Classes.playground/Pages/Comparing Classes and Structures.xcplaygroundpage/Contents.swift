//: [Previous](@previous)

import Foundation


//Structures and Classes (구조체와 클래스)
//구조체 (structures) 와 클래스 (classes) 는 프로그램 코드의 ‘건축 자재 (building blocks)’ 역할을 하는 범용적이고, 유연한 ‘구조물 (constructs)’ 입니다.
//구조체와 클래스에 기능을 추가하기 위한 속성과 메소드는 상수와, 변수, 및 함수를 정의할 때와 똑같은 구문 표현을 사용하여 정의합니다



//Comparing Structures and Classes (구조체와 클래스 비교하기)
//스위프트의 구조체와 클래스는 공통점을 많이 가지고 있습니다. 둘 다 다음을 할 수 있습니다:

//값을 저장하는 속성을 정의함
//기능을 제공하는 메소드를 정의함
//값에 대한 접근을 첨자 연산 구문으로 제공하는 첨자 연산을 정의함
//초기 상태를 설정하는 초기자를 정의함
//기본 구현 너머로 기능을 확대하도록 확장됨
//정해진 종류의 표준 기능을 제공하기 위해 프로토콜을 준수함


//클래스는 구조체에는 없는 추가적인 보유 능력을 가집니다:

//‘상속 (inheritance)’ 은 한 클래스가 또 다른 클래스의 ‘성질 (characteristics)’ 을 상속하도록 해줍니다.
//‘타입 변환 (type casting)’ 은 클래스 인스턴스의 타입을 ‘실행 시간’ 에 검사하고 해석하도록 해줍니다.
//‘정리자 (deinitializer)’ 는 클래스 인스턴스가 할당 받은 어떤 자원이든 자유롭게 풀어주도록 합니다.
//‘참조 카운팅 (reference counting)’ 은 클래스 인스턴스에 대한 참조를 하나 이상 허용합니다.

//구조체화 클래스 선택하기 문서
///https://developer.apple.com/documentation/swift/choosing_between_structures_and_classes


//Definition Syntax (정의 구문 표현)
//구조체와 클래스를 정의하는 구문 표현은 비슷합니다. 구조체는 struct 키워드로 도입하고 클래스는 class 키워드로 도입합니다. 둘 다 한 쌍의 중괄호 안에 전체 정의를 둡니다:

struct SomeStructure {
  // 구조체 정의는 여기에 둡니다.
}
class SomeClass {
  // 클래스 정의는 여기에 둡니다.
}


//다음은 구조체 정의와 클래스 정의에 대한 예제입니다:

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
//위 예제는, 픽셀-기반 디스플레이 해상도를 설명하는, Resolution 이라는 새로운 구조체를 정의합니다. 이 구조체는 width 와 height 라는 두 개의
//‘저장 속성 (stored properties)’ 을 가집니다. 저장 속성은 구조체나 클래스에 뭉쳐져 저장되는 상수나 변수입니다. 이 두 속성들은 0 이라는
//초기값으로 설정되므로 Int 타입으로 추론됩니다.

//첫 번째인, resolution 은, 속성 타입을 Resolution 으로 추론하도록, 새로운 Resolution 구조체 인스턴스로 초기화됩니다. 다른 세 속성의
//경우, interalced 는 (“비월 주사 방식 (noninterlaced) 영상”5 을 의미하는) false, ‘녹화 프레임 재생 속도’ 는 0.0, 그리고 name
//이라는 ‘옵셔널 String 값’ 을 가지고 새로운 VideoMode 인스턴스가 초기화될 것입니다. name 속성은, 옵셔널 타입이기 때문에, 기본 값이 nil,
//또는 “name 값이 없음”, 으로 자동으로 주어집니다.


//Structure and Class Instances (구조체와 클래스 인스턴스)

//인스턴스를 생성하는 구문 표현은 구조체와 클래스 둘 다 매우 비슷합니다:

let someResolution = Resolution()
let someVideoMode = VideoMode()

//구조체와 클래스 둘 다 새로운 인스턴스를 위해 ‘초기자 구문 표현 (initializer syntax)’ 을 사용합니다.
//가장 간단한 형식의 초기자 구문 표현은, Resolution() 이나 VideoMode() 처럼, 클래스나 구조체의 타입 이름 뒤에 빈 괄호를 사용합니다.



//Accessing Properties (속성에 접근하기)
//인스턴스의 속성은 점 구문 표현 (dot syntax) 을 사용하여 접근할 수 있습니다. ‘점 구문’ 에서, 속성 이름은 인스턴스 이름 바로 뒤에, 어떤 공백도 없이, ‘마침표 (period; .)’ 로 구분하여, 작성합니다

print ( "The width of someResolution is \(someResolution.width)")
// "The width of someResolution is 0" 를 인쇄합니다.
//width 속성을 참조하며, 0 이라는 ‘기본 초기 값’ 을 반환합니다.


print ( "The width of someVideoMode is \(someVideoMode.resolution.width)")
// "The width of someVideoMode is 0" 를 인쇄합니다.
//VideoMode 의 resolution 속성에 있는 width 속성 처럼, ‘하위 속성’ 으로 파고 들어 갈 수 있습니다

someVideoMode.resolution.width = 1280
print ( "The width of someVideoMode is now \(someVideoMode.resolution.width)")
// "The width of someVideoMode is now 1280" 를 인쇄합니다.
//‘점 구문’ 은 ‘변수 속성’ 에 새로운 값을 할당하기 위해서도 사용할 수 있습니다



//Memberwise Initializers for Structure Types (구조체 타입을 위한 멤버 초기자)
//모든 구조체는 자동으로 생기는 멤버 초기자 (memberwise initializer) 를 가지는데, 이는 새로운 구조체 인스턴스의 멤버 속성을 초기화하는데 사용할 수 있습니다.
let vga = Resolution(width: 640, height: 480)
//: [Next](@next)
