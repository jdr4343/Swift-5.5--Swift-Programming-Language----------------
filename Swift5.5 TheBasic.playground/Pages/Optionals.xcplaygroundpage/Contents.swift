//: [Previous](@previous)

import Foundation

//Optionals (옵셔널)
//옵셔널 (optionals) 은 값이 없을 수도 있는 상황에서 사용합니다. ‘옵셔널’ 은 두 개의 가능성: 즉, 값이 있고 (is), 해당 값에 접근하기 위해 옵셔널의 포장을 풀 수 있는 경우, 또는 값이 전혀 없는 (isn’t) 경우를 표현합니다.

//스위프트의 Int 타입에는 String 값을 Int 값으로 변환하려는 ‘초기자 (initializer)’ 가 있습니다.
//하지만, 모든 문자열을 정수로 변환할 수 있는 것은 아닙니다. 문자열 "123" 은 수치 값 123 으로 변환할 수 있지만, 문자열 "hello, world" 는 변환할 수치 값이 분명하지 않습니다

let a = "123"
let converta = Int(a)
converta//Int?
//초기자가 실패할 수도 있으므로, Int 대신, ‘옵셔널 (optional) Int’ 를 반환합니다.
//‘옵셔널 Int’ 는, Int 가 아니라, Int? 라고 작성합니다. 물음표는 담고 있는 값이 옵셔널임을 나타내는데, 어떤 Int 값을 담고 있거나, 아니면 아예 아무 값도 담고 있지 않음을 의미합니다.


//nil
//옵셔널 변수에 특수한 값인 nil 을 할당함으로써 ‘값이 없는 상태 (valueless state)’ 를 설정합니다
//옵셔널 변수를 정의하면서 ‘기본 값 (default value)’ 을 제공하지 않으면, 이 변수는 nil 로 자동 설정합니다
var OptionalString: String?
var OptionalInt: Int? = 1234
//If Statements and Forced Unwrapping (If 문과 강제 포장 풀기)
//if 문을 사용하면 옵셔널을 nil 과 비교함으로써 옵셔널이 값을 담고 있는지 알아낼 수 있습니다. 이 비교 연산은 “같음 (equal to)” 연산자 (==) 나 “같지 않음 (not equal to)” 연산자 (!=) 로 수행합니다.
if OptionalString != nil {
    print("not nil")
}else {
    print("Yes")
}

//옵셔널이 값을 담고 있음을 한 번 확신 하고 (does) 나면, 옵셔널 이름 끝에 느낌표 (!) 를 붙여서 ‘실제 값 (underlying value)’ 에 접근할 수 있습니다.
//느낌표는 실제로, “이 옵셔널이 값을 가짐은 확실하니; 사용하기 바랍니다.” 라고 말하는 것입니다. 이것이 옵셔널 값의 ‘강제 포장 풀기 (forced unwrapping)’ 라는 것입니다
if OptionalInt != nil {
    print("This vlaue is naver nil \(OptionalInt!)")
}

//Optional Binding (옵셔널 연결)
//옵셔널 연결 (optional binding) 을 사용하면 옵셔널이 값을 담고 있는지 알아내서, 그 경우, 해당 값을 임시 상수나 변수로 사용 가능하게 만들어 줍니다.
//옵셔널 연결’ 을 if 와 while 문과 같이 사용하면, 단일 작업으로, 옵셔널 안의 값을 검사하고, 해당 값을 상수나 변수로 추출할 수 있습니다.

//if 문의 ‘옵셔널 연결’ 은 다음 처럼 작성합니다:
//if let constantName-상수 이름 = someOptional-어떤 옵셔널 {
//    statements-구문
//}

if let ConvertA = Int(a) {
    print("The string \"\(a)\" has an integer value of \(ConvertA)")
    } else {
      print("The string \"\(a)\" could not be converted to an integer")
    }

//“Int(a) 에서 반환된 옵셔널 Int 가 값을 담고 있으면, ConvertA 라는 새로운 상수를 옵셔널에 담긴 값에 설정합니다.”
//변환이 성공하면, actualNumber 상수가 if 문의 첫 번째 분기에서 사용 가능해 집니다.
//이는 이미 옵셔널 내에 (within) 담긴 값으로 초기화되었으므로, 값에 접근하려고 ! 접미사를 사용할 필요가 없습니다. 이 예제의, actualNumber 는 단순히 변환 결과를 인쇄하는데 사용됩니다.
//‘옵셔널 연결’ 은 상수와 변수 둘 모두와 사용할 수 있습니다

//단일 if 문에는 필요한 만큼 많은 ‘옵셔널 연결’ 과 ‘불리언 조건’ 을, 쉽표로 구분하여, 포함시킬 수 있습니다. 옵셔널 연결에 있는 어떤 값이든 nil 이거나 어떤 불리언 조건이든 false 로 평가된다면, 전체 if 문의 조건이 false 인 것으로 간주됩니다.

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber) < 100")
}
// "4 < 42 < 100" 를 인쇄합니다.
//String 4 와 42를 옵셔널 바인딩으로 Int 4와 42 로 만든후 4가 42 보다 작고 동시에 42 가 100보다 작으면 출력 하도록 하고있다.
if let firstNumber = Int("4") {
  if let secondNumber = Int("42") {
    if firstNumber < secondNumber && secondNumber < 100 {
      print("\(firstNumber) < \(secondNumber) < 100")
    }
  }
}
// "4 < 42 < 100" 를 인쇄합니다


//Implicitly Unwrapped Optionals (암시적으로 포장을 푸는 옵셔널)
//위에서 설명한 것처럼, 옵셔널은 상수나 변수가 “값이 없는” 상태를 가질 수 있는 것임을 나타냅니다.
//옵셔널은 값이 존재하는지 보기 위해 if 문으로 검사할 수 있으며, 존재할 경우 옵셔널 값에 접근하기 위해 옵셔널 연결을 써서 조건부로 포장을 풀 수도 있습니다.
//암시적으로 포장을 푸는 옵셔널’ 은 옵셔널이 처음 정의된 직후 옵셔널 값이 존재함이 확정되고 이후의 모든 순간에 존재한다고 확실하게 가정할 수 있을 때 유용합니다.

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 느낌표는 필수입니다.

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 느낌표가 필요 없습니다.

//‘암시적으로 포장을 푸는 옵셔널’ 이 nil 인 경우 포장된 값에 접근하려고 하면, ‘실행 시간 에러 (runtime error)’ 를 발생시킬 것입니다. 이 결과는 마치 값을 담지 않은 보통의 옵셔널 뒤에 느낌표를 붙인 경우에서와 정확히 똑같습니다.
//: [Next](@next)
