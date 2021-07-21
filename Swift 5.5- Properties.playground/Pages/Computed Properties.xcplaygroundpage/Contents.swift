//: [Previous](@previous)

import Foundation

//Computed Properties (계산 속성)
//‘저장 속성’ 에 더하여, 클래스, 구조체, 그리고 열거체는, 실제로는 값을 저장하지 않는, 계산 속성 (computed properties) 을 정의할 수 있습니다.
//그 대신, 이는 다른 속성과 값을 간접적으로 가져오고 설정하기 위한 ‘획득자 (getter)’ 와 선택 사항인 ‘설정자 (setter)’ 를 제공합니다.

struct Point {
  var x = 0.0, y = 0.0
}
struct Size {
  var width = 0.0, height = 0.0
}
struct Rect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
      origin.x = newCenter.x - (size.width / 2)
      origin.y = newCenter.y - (size.height / 2)
    }
  }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// "square.origin is now at (10.0, 10.0)" 를 출력합니다.

//get 블록은 속성값을 읽을때 실행 됩니다. 반드시 리턴 키워드를 통해서 다른속성에 있는 값을 리턴하거나 자료형값과 동일한값을 리턴해야 합니다.
//set 블록은 값을 저장할때 실행됩니다.set 블록에서는 ()와 파라미터를 생략할수 있는데 이 경우에는 newValue라는 이름을 가진 기본 파라미터를 사용합니다.



//Shorthand Setter Declaration (설정자 선언의 줄임 표현)
//계산 속성의 설정자가 설정할 새 값에 대한 이름을 정의하지 않은 경우, ‘기본 이름’ 인 newValue 를 사용합니다. 다음은 이런 ‘줄임 표기법 (shorthand notation)’ 의 장점을 취한 Rect 구조체의 또 다른 버전입니다

struct AlternativeRect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set {
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}


//Shorthand Getter Declaration (획득자 선언의 줄임 표현)
//획득자의 전체 본문이 ‘단일 표현식 (single expression)’ 인 경우, 획득자는 해당 표현식을 암시적으로 반환합니다. 다음은 이런 ‘줄임 표기법’ 과 설정자에 대한 ‘줄임 표기법’ 의 장점을 취한 Rect 구조체의 또 다른 버전입니다
//획득자에서 return 을 생략하는 것

struct CompactRect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      Point(x: origin.x + (size.width / 2), y: origin.y + (size.height / 2))
    }
    set {
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}

//Read-Only Computed Properties (읽기-전용 계산 속성)
//‘획득자’ 는 가지지만 ‘설정자’ 는 가지지 않은 ‘계산 속성’ 을 읽기-전용 계산 속성 (read-only computed property) 이라고 합니다. ‘읽기-전용 계산 속성’ 은 값을 항상 반환하며, ‘점 구문’ 을 통해 접근할 수 있지만, 다른 값을 설정할 수는 없습니다.

//읽기-전용 계산 속성을 포함한-계산 속성은 반드시 var 키워드를 가진 변수 속성으로 선언해야 하는데, 이 값은 고정된 것이 아니기 때문입니다.
//읽기-전용 계산 속성은 get 키워드와 중괄호를 제거하여 선언을 단순화할 수 있습니다4:
struct Cuboid {
  var width = 0.0, height = 0.0, depth = 0.0
  var volume: Double {
    return width * height * depth
  }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// "the volume of fourByFiveByTwo is 40.0" 를 인쇄합니다.





//: [Next](@next)
