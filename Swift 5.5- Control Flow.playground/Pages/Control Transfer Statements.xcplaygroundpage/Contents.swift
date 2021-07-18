//: [Previous](@previous)

import Foundation
//Control Transfer Statements (제어 전달문)
//제어 전달문 (control transfer statements) 은, 제어를 한 코드에서 다른 곳으로 전달함으로써, 코드를 실행하는 순서를 바꿉니다. 스위프트는 다섯 개의 ‘제어 전달문’ 을 가집니다

//continue
//break
//fallthrough
//return
//thorw

//continue, break, 및 fallthrough 문은 아래에서 설명합니다. return 문은 Functions (함수) 에서 설명하고, throw 문은 Propagating Errors Using Throwing Functions (‘던지는 함수’ 로 에러 전파하기) 에서 설명합니다.

//Continue (continue 문)
//continue 문은 반복문이 지금 하고 있는 것을 멈추고 반복문을 통과하여 다음 ‘회차 (iteration)’ 의 맨 앞에서 다시 시작하라고 말합니다

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
  if charactersToRemove.contains(character) {
    continue
  }
  puzzleOutput.append(character)
}
print(puzzleOutput)

//위 코드는 ‘모음’ 이나 ‘공백’ 과 일치할 때마다 continue 키워드를 호출하여, 반복문의 현재 ‘회차’ 를 즉시 끝내고 다음 ‘회차’ 시작으로 곧장 넘어 가도록 합니다.


//Break (break 문)
//break 문은 전체 ‘제어 흐름문’ 의 실행을 즉시 끝냅니다. break 문은 switch 문이나 반복문의 실행을 다른 경우보다 더 일찍 끝내고 싶을 때 switch 문이나 반복문 안에서 사용합니다.

//Break in a Loop Statement (반복문 안의 break 문)
//반복문 안에서 사용할 때, break 는 반복문의 실행을 즉시 끝내며 ‘제어 (control)’ 를 반복문의 ‘닫는 중괄호 (})’ 뒤의 코드로 전달합니다. 반복문의 현재 ‘회차’ 에 있는 코드를 더 이상 실행하지도 않고, 반복문의 ‘회차’ 도 더 이상 시작하지 않습니다.

//Break in a Switch Statement (switch 문 안의 break 문)
//switch 문 안에서 사용할 때, break 는 switch 문이 실행을 즉시 끝도록 하며 ‘제어’ 을 switch 문의 ‘닫는 중괄호 (})’ 뒤의 코드로 전달하도록 합니다.

let numberSymbol: Character = "三"  // '3' 이라는 수의 중국어 기호
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
  possibleIntegerValue = 1
case "2", "٢", "二", "๒":
  possibleIntegerValue = 2
case "3", "٣", "三", "๓":
  possibleIntegerValue = 3
case "4", "٤", "四", "๔":
  possibleIntegerValue = 4
default:
  break
}
if let integerValue = possibleIntegerValue {
  print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
  print("An integer value could not be found for \(numberSymbol).")
}

//이 예제는 numberSymbol 을 검사하여 1 에서 4 까지의 라틴어, 아랍어, 중국어, 또는 태국어 기호인지 결정합니다. 일치한 것을 찾으면, switch 문의 ‘case 절’ 증 하나가 possibleIntegerValue 라는 ‘옵셔널 Int?’ 변수에 적절한 정수 값을 설정합니다.



//Fallthrough (fallthrough 문)
//스위프트에서, switch 문은 각 ‘case 절’ 의 끝을 빠져 나가서 그 다음으로 넘어가지 않습니다. 즉, 전체 switch 문은 첫 째로 일치한 ‘case 절’ 을 완료하자 마자 실행을 완료합니다.

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
  description += " a prime number, and also"
  fallthrough
default:
  description += " an integer."
}
print(description)
// "The number 5 is a prime number, and also an integer."


//abeled Statements (이름표 구문)
//스위프트는, 복잡한 ‘제어 흐름 구조’ 를 생성하기 위해 반복문과 조건문이 다른 반복문과 조건문을 ‘중첩 (nest)’ 할 수 있습니다. 하지만, 반복문과 조건문은 둘 다 실행을 미리 끝내기 위해 break 문을 사용 수 있습니다.
//그러므로, break 문이 종료하고 싶은 반복문이나 조건문이 어느 것인지 명시하는 것이 유용할 때가 있습니다

//이름표 구문’ 은 구문의 ‘도입자 (introducer)’ 키워드와 같은 줄에 이름표, 및 그 뒤에 콜론을 붙여서, 지시합니다. 아래는 while 반복문에 대한 ‘구문 표현’ 의 한 예제로, 이 원리는 모든 반복문과 switch 문에 대해서 동일합니다:

//label name-이름표 이름: while condition-조건 {
//    statements-구문
//}


//Early Exit (조기 탈출문)
//guard 문은, if 문 같이, 표현식의 ‘불리언 (Boolean) 값’ 에 따라 구문을 실행합니다. guard 문은 guard 문 이후의 코드를 실행하기 위해서는 반드시 조건이 ‘참 (true)’ 이기를 요구하기 위해 사용합니다.
//if 문과는 다르게, guard 문은 항상 else 절을 가집니다-else 절 안의 코드는 조건이 ‘참’ 이 아닐 경우 실행됩니다.

func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }

  print("Hello \(name)!")

  guard let location = person["location"] else {
    print("I hope the weather is nice near you.")
    return
  }

  print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// "Hello John!" 을 인쇄합니다.
// "I hope the weather is nice near you." 를 인쇄합니다.
greet(person: ["name": "Jane", "location": "Cupertino"])
// "Hello Jane!" 을 인쇄합니다.
// "I hope the weather is nice in Cupertino." 를 인쇄합니다.
























//: [Next](@next)
