//: [Previous](@previous)

import Foundation

//Default Parameter Values (기본 매개 변수 값)
//함수에 있는 매개 변수는 어떤 것이든 값을 해당 매개 변수의 타입 뒤에 할당함으로써 기본 값 (default value) 을 정의할 수 있습니다.
//‘기본 값’ 을 정의한 경우, 함수를 호출할 때 해당 매개 변수를 생략할 수 있습니다.

func someFunction (parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
  // 이 함수를 호출할 때 두 번째 인자를 생략하면,
  // 함수 본문에서 parameterWithDefault 의 값은 12 가 됩니다.
}
someFunction (parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault 는 6 입니다.
someFunction (parameterWithoutDefault: 4) // parameterWithDefault 는 12 입니다.

//‘기본 값’ 을 가지지 않는 매개 변수를, ‘기본 값’ 을 가지는 매개 변수 보다 앞인, 함수 매개 변수 목록의 맨 앞에 위치시킵니다. 기본 값을 가지지 않는 매개 변수는 대체로 함수에서 더 중요한 의미를 가집니다


//Variadic Parameters (가변 매개 변수)
//일반 파라미터는 전달가능한 아규먼트가 하나로 고정되지만 가변파라미터에서는 하나이상의 아규먼트를 전달할수 있습니다. 전달 가능한 아규먼트가 수가 고정적이지 않고 가변적이기 때문에 가변 파라미터라고 부릅니다.
//가변 매개 변수는 매개 변수의 타입 이름 뒤에 ‘마침표 (period characters; ...)’ 세 개를 집어 넣어 작성합니다.

func arithmeticMean(_ numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// 이 다섯 수들의 산술 평균인, 3.0 을 반환합니다.
arithmeticMean(3, 8.25, 18.75)
// 이 세 수의 산술 평균인, 10.0 을 반환합니다.

//가변파라미터는 기본값을 가질수 없습니다.


//In-Out Parameters (입-출력 매개 변수)
//함수 매개 변수는 기본적으로 상수입니다. 함수 매개 변수의 값을 해당 함수 본문에서 바꾸려고 하는 것은 ‘컴파일-시간 에러’ 가 되버립니다.
//이는 매개 변수의 값이 실수로 바뀔 일은 없다는 의미입니다. 함수에서 매개 변수의 값을 수정하고 싶고, 이렇게 바뀐 것을 함수 호출이 끝난 후에도 유지하고 싶으면, 해당 매개 변수를 입-출력 매개 변수 (in-out parameter) 로 대신 정의합니다.


//입-출력 매개 변수’ 는 매개 변수 타입 바로 앞에 inout 키워드를 붙여서 작성합니다.
//변수를 입-출력 매개 변수의 인자로 전달할 때는, 함수에서 수정될 수 있음을 지시하기 위해, 변수 이름 바로 앞에 ‘앤드 기호 (ampersand; &)’ 를 붙입니다.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// "someInt is now 107, and anotherInt is now 3" 를 인쇄합니다.
//위 예제는 someInt 와 anotherInt 의 원본 값이, 함수 외부에서 정의했음에도 불구하고, swapTwoInts(_:_:) 함수에서 수정된다는 것을 보여줍니다.


//: [Next](@next)
