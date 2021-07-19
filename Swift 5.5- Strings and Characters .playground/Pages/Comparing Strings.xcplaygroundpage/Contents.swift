//: [Previous](@previous)

import Foundation

//Comparing Strings (문자열 비교하기)
//스위프트는 ‘문장 형태의 (textual) 값’ 을 비교하는 세 가지 방법을 제공합니다: ‘문자열과 문자의 같음 비교 (string and character equality)’, ‘접두사 같음 비교 (prefix equality)’, ‘접미사 같음 비교 (suffix equality)’ 이 그것입니다.


//String and Character Equality (문자열과 문자의 같음 비교)
//‘문자열과 문자의 같음 비교’ 는, Comparison Operators (비교 연산자) 에서 설명한 것처럼, “같음 (equal to)” 연산자 (==) 와 “같지 않음 (not equal to)” 연산자 (!=) 로 검사합니다
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
  print("These two strings are considered equal")
}
// "These two strings are considered equal." 을 인쇄합니다.
//String 값들 (또는 두 Character 값들) 은 그들의 ‘확장된 자소 덩어리’ 가 ‘법적으로 동치 (canonically equivalent)’23 이면 같다고 간주합니다.
//자소 덩어리는 그들이, 심지어 그 이면에서는 서로 다른 ‘유니코드 크기 값’ 으로 구성되었다 할지라도, ‘언어적으로 (linguistic)’ 같은 의미와 형태를 가지면 ‘법적으로 동치’ 입니다.



//prefix and Suffix Equality (접두사와 접미사의 같음 비교)
//문자열이 특정 문자열의 접두사나 접미사를 가지고 있는지 검사하려면, 문자열의 hasPrefix(_:) 와 hasSuffix(_:) 메소드를 호출하는데, 이 둘 모두 String 타입의 단일 인자를 취하고 ‘불리언 (Boolean)’ 값을 반환합니다.

//아래 예제는 셰익스피어의 로미오와 줄리엣 (Romeo and Juliet) 에 있는 첫 두 ‘막 (acts)’ 의 각 ‘장(면; scene)’ 을 표현하는 문자열 배열을 고려합니다:

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

//hasPrefix(_:) 메소드를 romeoAndJuliet 배열에 사용하면 ‘희곡 (play)’ 의 ‘제 1막’ 에 있는 ‘장(면)’ 의 수를 셀 수 있습니다:

var act1SceneCount = 0

for scene in romeoAndJuliet {
  if scene.hasPrefix("Act 1") {
    act1SceneCount += 1
  }
}
print("There are \(act1SceneCount) scenes in Act 1")
// "There are 5 scenes in Act 1" 를 인쇄합니다.

//위와 비슷하게, hasSuffix(_:) 메소드를 사용하면 ‘캐퓰렛 저택 (Capulet’s mansion)’25 과 ‘로렌스 수사의 작은 방 (Friar Lawrence’s cell)’인 곳 또는 이 곳 주변에서 일어나는 ‘장(면)’ 의 수를 셀 수 있습니다.:

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
  if scene.hasSuffix("Capulet's mansion") {
    mansionCount += 1
  } else if scene.hasSuffix("Friar Lawrence's cell") {
    cellCount += 1
  }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// "6 mansion scenes; 2 cell scenes" 를 인쇄합니다.
//: [Next](@next)
