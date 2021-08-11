//: [Previous](@previous)

import Foundation
//Closure Expressions (클로저 표현식)
//클로저 표현식 은 ‘인라인 클로저 (inline closure)’5 를 간결하고, 집중된 구문 표현으로 작성하기 위한 방법입니다. ‘클로저 표현식’ 은 분명한 의도를 잃지 않으면서도 클로저를 ‘줄임 형식 (shorthand form)’ 으로 작성하기 위해 여러 가지 구문 표현 최적화를 제공합니다.


//The Sorted Method (정렬 메소드)
//스위프트의 표준 라이브러리는 sorted(by:) 라는 메소드를 제공하는데, 이는, 직접 제공한 ‘정렬 클로저’ 의 출력에 기초하여, 알려진 타입의 값 배열을 정렬합니다.
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let number = [1, 2, 11, 12, 5]

func backward(_ s1: String, _ s2: String) -> Bool {
  return s1 > s2
}
func backnumber(_ s1: Int, _ s2: Int) -> Bool {
  return s1 > s2
}

var reversedNames = names.sorted(by: backward)
// reversedNames 는 ["Ewa", "Daniella", "Chris", "Barry", "Alex"] 입니다.
var sortedNum = number.sorted()
var reversedNumber = number.sorted(by: backnumber)


//Closure Expression Syntax (클로저 표현식 구문 표현)
//클로저 표현식 구문 표현’ 에 있는 매개 변수 (parameters) 는 ‘입-출력 (in-out) 매개 변수’ 일 순 있지만, ‘기본 (default) 값’ 을 가질 수는 없습니다

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
  return s1 > s2
})

var reverNum = number.sorted(by: { (s1: Int, s2: Int) in
    return s1 > s2
})

//클로저 본문이 아주 짧기 때문에, 이를 심지어 한 줄로도 작성할 수 있습니다.
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )


//Inferring Type From Context (문맥 상황으로 타입 추론하기)
//정렬 클로저’ 는 메소드에 인자로써 전달되기 때문에, 스위프트가 이의 매개 변수 타입과 반환 값 타입을 추론할 수 있습니다.
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
reversedNumber = number.sorted(by: { s1, s2 in return s1 > s2 })

//Implicit Returns from Single-Expression Closures (단일-표현식 클로저의 암시적인 반환)

//‘단일-표현식 클로저’ 는 선언에서 return 키워드를 생략하여 자신의 ‘단일 표현식’ 을 암시적으로 반환할 수 있으며, 이전 예제를 이렇게 하면 다음과 같습니다:

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
reversedNumber = number.sorted(by: { s1, s2 in s1 > s2})

//Shorthand Argument Names (인자 이름의 줄임 표현)
//스위프트는 인라인 클로저에 대해 인자 이름의 ‘줄임 표현 (shorthand)’을 자동으로 제공하는데, 이는 클로저 인자의 값을 $0, $1, $2, 등등의 이름으로 참조하기 위해 사용할 수 있습니다.
//in 키워드도 생략할 수 있는데, 클로저 표현식이 완전히 본문으로만 이루어지기 때문입니다:

reversedNames = names.sorted(by: { $0 > $1 } )
reversedNumber = number.sorted(by: { $0 > $1 })


//Operator Methods (연산자 메소드)
//실제로는 위 클로저 표현식을 더 짧게 (shorter) 작성하는 방식도 있습니다.
//Bool 타입의 값을 반환하는 메소드인, ‘보다 큰 연산자 (>)’ 의 문자열-버전 구현을 정의하고 있습니다.
reversedNames = names.sorted(by: >)
reversedNumber = number.sorted(by: >)






















//: [Next](@next)
