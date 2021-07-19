//: [Previous](@previous)

import Foundation

//Accessing and Modifying a String (문자열에 접근하고 수정하기)
//문자열은 메소드와 속성, 또는 ‘첨자 연산 구문 표현 (subscript syntax)’ 을 사용하여 접근하고 수정합니다.

//String Indices (문자열 색인)
//각 String 값은 ‘결합된 색인 타입 (index type) 인’, String.Index 을 가지고 있는데, 이는 문자열에 있는 각 Character 의 위치와 관련되어 있습니다.

//String 의 첫 번째 Character 위치에 접근하려면 startIndex 속성을 사용합니다. endIndex 속성은 String 에 있는 마지막 문자 다음 위치입니다.
//그 결과, endIndex 속성은 문자열의 ‘첨자 연산’ 에 대한 인자로 유효하지 않습니다. String 이 비어있으면, startIndex 와 endIndex 가 같습니다.

//String 의 index(before:) 와 index(after:) 메소드를 사용하여 주어진 색인 전후의 색인에 접근합니다. 주어진 색인에서 멀리 떨어진 색인에 접근하려면, 이러한 메소드를 여러 번 호출하는 대신 index(_:offsetBy:) 메소드를 사용할 수 있습니다.

//특정 String 색인에 있는 Character 에 접근하기 위해 ‘첨자 연산 구문 표현’ 을 사용할 수 있습니다.

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
//문자열 범위 밖의 색인 또는 문자열 범위 밖의 색인에 있는 Character 에 접근하려는 것은 ‘실행 시간 에러’ 를 일으킬 것입니다.

 //greeting[greeting.endIndex]  // 에러
// greeting.index(after: greeting.endIndex) // 에러

//문자열에 있는 모든 개별 문자의 색인에 접근하려면 indices 속성을 사용합니다.

for index in greeting.indices {
  print("\(greeting[index]) ", terminator: "")
}
// "G u t e n   T a g ! " 를 인쇄합니다.

//startIndex 와 endIndex 속성들 그리고 index(before:), index(after:), 및 index(_:offsetBy:) 메소드는 Collection 프로토콜을 준수하는 어떤 타입에서도 사용할 수 있습니다.
//이는, 여기서 보인, String 뿐만 아니라 Array, Dictionary, 및 Set 같은 컬렉션 타입을 포함합니다.


//Inserting and Removing (집어 넣기와 제거하기)
//단일 문자를 문자열의 지정된 색인에 집어 넣으려면, insert(_:at:) 메소드를 사용하고, 다른 문자열의 ‘내용물 (contents)’ 을 지정된 색인에 집어 넣으려면, insert(contentsOf:at:) 메소드를 사용합니다.

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome 은 이제 "hello!" 입니다.

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome 은 이제 "hello there!" 입니다.
welcome.insert(contentsOf: "Hi ", at:welcome.startIndex)


//단일 문자를 문자열의 지정된 색인에서 제거하려면, remove(at:) 메소드를 사용하고, 지정된 범위의 ‘하위 문자열 (substring)’ 을 제거하려면, removeSubrange(_:) 메소드를 사용합니다:

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome 은 이제 "hello there" 입니다.
print(welcome)
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome 은 이제 "hello" 입니다.
//: [Next](@next)
