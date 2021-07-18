//: [Previous](@previous)

import Foundation
//Switch (switch 문)
//switch 문은 값을 고려해서 이를 일치 가능한 여러 ‘유형 (patterns)’ 들과 비교합니다. 그런 다음 성공적으로 일치한 첫 번째 ‘유형 (pattern)’ 에 기초하여 적절한 코드 블럭을 실행합니다. switch 문은 ‘잠재적인 다중 상태’ 에 응답함에 있어서 if 문의 대안을 제공합니다.

//모든 switch 문은 ‘여러 가능한 case 절 (cases)’11 들로 구성되는데, 이들 각각은 case 키워드로 시작합니다.
//든 switch 문은 반드시 빠짐없이 철저 (exhaustive)12 해야 합니다. 즉, 고려중인 타입의 모든 가능한 값은 ‘switch 문의 case 절’ 중 하나와는 반드시 일치해야 합니다.
//모든 가능한 값에 대해 ‘case 절’ 을 제공하는 것이 적절하지 않은 경우, 명시적으로 말하지 않은 어떤 값이든 다루도록 ‘기본 (default) case 절’ 을 정의할 수 있습니다.

let temperature = 32
switch temperature {
case -10 ..< -5:
    print("very cold wear padding")
case -5 ..< 0:
    print("cold wear padding")
case 0 ..< 15:
    print("wear sweater")
case 15 ..< 25:
    print("Good weather wear t-shirt")
case 25 ..< 35:
    print("very hot If you wear padding, you're gonna take off.")
 default:
    break
        
}

//Tuples (튜플)
//동일한 switch 문에서 여러 값을 테스트하기 위해 ‘튜플’ 을 사용할 수 있습니다. 튜플의 각 원소는 서로 다른 값 또는 서로 다른 값인 구간과 테스트할 수 있습니다.
//또 다른 방법으로, 가능한 어떤 값과도 일치 여부를 맞춰보려면, ‘와일드카드 패턴 (wildcard pattern)’14 이라고도 하는, ‘밑줄 문자 (_)’ 를 사용합니다.

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
  print("\(somePoint) is at the origin")
case (_, 0):
  print("\(somePoint) is on the x-axis")
case (0, _):
  print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
  print("\(somePoint) is inside the box")
default:
  print("\(somePoint) is outside of the box")
}

//Value Bindings (값 연결)

//switch case 절’ 은 일치하는 값 또는 값들을, ‘case 절’ 의 본문에서 사용하기 위해, 임시 상수나 변수로 이름을 붙일 수 있습니다. 이 작동 방식을 값 연결 (value binding) 이라고 하는데, 값이 ‘case 절’ 본문 내의 임시 상수나 변수로 연결되기 때문입니다.

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
  print("on the x-axis with an x value of \(x)")
case (0, let y):
  print("on the y-axis with a y value of \(y)")
case let (x, y):
  print("somewhere else at (\(x), \(y))")
}

//Where (where 절)

//‘switch case 절’ 은 추가적인 조건을 검사하기 위해 ‘where 절’ 을 사용할 수 있습니다.
//패턴에 조건을 추가하는 문법입니다. 패턴다음에 where 키워드를 쓴다음 패턴을 대상으로 확인할 조건을 작성합니다. 이렇게 하면 단순히 패턴매칭을 수행하는 것이 아니라 케이스의 패턴이 매칭 되었을떄 컨디션을 통해서 한번더 확인합니다.
//그러면 이케이스 블럭이 실행되는 조건은 패턴이 일치하고 컨디션이 트루로 평가되는 시점입니다. 만약에 패턴이 일치하더라도 컨디션이 false로 평가된다면 케이스 블록은 실행되지 않습니다.
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
  print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
  print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
  print("(\(x), \(y)) is just some arbitrary point")
}


//Compound Cases (복합 case 절)

//switch 문에서 똑같은 본문을 공유하는 ‘다중 case 절’ 은 case 뒤에, 각 ‘유형 (patterns)’ 은 쉼표로 구분하여, 여러 개의 ‘유형’ 을 작성함으로써 조합할 수 있습니다.

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
  print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
  print("\(someCharacter) is a consonant")
default:
  print("\(someCharacter) is not a vowel or a consonant")
}


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
  print("On an axis, \(distance) from the origin")
default:
  print("Not on an axis")
}
//위의 ‘case 절’ 은 두 개의 ‘유형 (patterns)’ 을 가지고 있습니다: (let distance, 0) 은 x-축 위의 점과 일치하며, (0, let distance) 는 y-축 위의 점과 일치합니다.
//두 ‘유형’ 모두 distance 에 대한 ‘연결’ 을 포함하며 distance 는 두 ‘유형’ 모두에서 ‘정수’ 입니다-이는 ‘case 절’ 의 본문 코드가 항상 distance 에 대한 값에 접근할 수 있음을 의미합니다.


//: [Next](@next)
