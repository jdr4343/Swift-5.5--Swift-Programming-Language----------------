//: [Previous](@previous)

import Foundation
//Function Argument Labels and Parameter Names (함수의 인자 이름표와 매개 변수 이름)

//각각의 함수 매개 변수는 인자 이름표 (argument label) 와 매개 변수 이름 (paramenter name) 둘 다 가집니다.
//‘인자 이름표’ 는 함수를 호출할 때 사용합니다; 함수 호출 시에 각 인자는 그 앞에 ‘인자 이름표’ 를 작성합니다.
//‘매개 변수 이름’ 은 함수 구현에서 사용합니다. 기본적으로, 매개 변수는 ‘매개 변수 이름’ 을 ‘인자 이름표’ 로 사용합니다.

func someFunction (firstParameterName: Int, secondParameterName: Int) {
  // 함수 본문에서, firstParameterName 과 secondParameterName 은
  // 첫 번째와 두 번째 매개 변수에 대한 인자 값을 참조합니다.
}
someFunction(firstParameterName: 1, secondParameterName: 2)
//모든 매개 변수는 반드시 유일한 이름을 가져야 합니다.


//Specifying Argument Labels (인자 이름표 지정하기)

//인자 이름표’ 는 ‘매개 변수 이름’ 앞에, 공백으로 구분하여, 작성합니다:
func someFunction(argumentLabel parameterName: Int) {
  // 함수 본문에서, parameterName 은
  // 해당 매개 변수에 대한 인자 값을 참조합니다.
}

func greet(person: String, from hometown: String) -> String {
  return "Hello \(person)! Glad you could visit from \(hometown)."
}
print (greet(person: "Bill", from: "Cupertino"))
// "Hello Bill! Glad you could visit from Cupertino." 를 인쇄합니다.

//인자 이름표를 사용하면, 여전히 이해하기 쉽고 의도가 명확한 함수 본문을 제공하면서도, 함수를 의미 전달력이 좋고, ‘일반 문장-같은 (sentence-like)’ 방식으로 호출하도록 해줍니다.


//Omitting Argument Labels (인자 이름표 생략하기)
//매개 변수에 인자 이름표를 붙이고 싶지 않으면, 해당 매개 변수에 명시적인 인자 이름표 대신 밑줄 (underscore; _ ) 을 작성합니다.

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
  // 함수 본문에서, firstParameterName 과 secondParameterName 은
  // 첫 번째와 두 번째 매개 변수에 대한 인자 값을 참조합니다.
}
someFunction (1, secondParameterName: 2)
//: [Next](@next)
