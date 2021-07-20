//: [Previous](@previous)

import Foundation

//Functions (함수)
//함수 (functions) 는 지정된 작업을 수행하는 ‘독립적인 (self-contained)’ 코드 조각입니다.
//함수는 하는 것이 무엇인지를 식별하는 이름을 부여하며, 이 이름은 필요한 작업을 할 때 함수를 “호출 (call)” 하기 위해 사용합니다.
//모든 함수는, 함수의 매개 변수 타입과 반환 타입으로 구성된, 타입을 가집니다.
//함수는 유용한 기능을 ‘중첩 함수 (nested function)’ 영역 내로만 은닉하기 위해 다른 함수 안에서 작성될 수도 있습니다.



//Defining and Calling Functions (함수 정의하기와 호출하기)

//함수를 정의할 때, 함수가 입력 받을 이름과 타입이 있는 값을 하나 이상 선택하여 정의할 수 있는데, 이를 매개 변수 (parameters) 라고 합니다.
//함수를 마친 다음에 출력으로 되돌려줄 값의 타입을 선택하여 정의할 수도 있는데, 이는 반환 타입 (return type) 이라고 합니다.

//함수 이름 (function name) 을 가집니다. 함수를 사용하려면, 해당 함수를 이름으로 “호출” 하고 함수의 매개 변수 타입과 일치하는 (인자 (arguments) 라는) 입력 값을 전달합니다.

//아래 예제는 person 이라는 String 값의-입력 매개 변수 하나와, 해당 사람을 위한 인사말을 담을, String 이라는 반환 타입을 정의합니다.
func greet(person: String) -> String {
  let greeting = "Hello, " + person + "!"
  return greeting
}
func plus(Integer: Int) -> Int {
    let pluss = (3 + Integer) * 2
    return pluss
}
//함수의 반환 타입은 반환 화살표 (return arrow) -> (대쉬 기호와 그 뒤의 오른쪽 꺽쇠 괄호) 로 지시하며, 이 뒤에 반환할 타입의 이름을 붙입니다.
print(greet(person: "Anna"))
// "Hello, Anna!" 를 인쇄합니다.
print(greet(person: "Brian"))
// "Hello, Brian!" 를 인쇄합니다.
print(plus(Integer: 4))

//함수의 본문을 더 짧게 만들도록, 메시지 생성과 반환문을 한 줄로 조합할 수 있습니다:

func greetAgain(person: String) -> String {
 return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
// "Hello again, Anna!" 를 인쇄합니다.












//: [Next](@next)

