//: [Previous](@previous)

import Foundation

//Assertions and Preconditions (단언문과 선행 조건문)
//단언문 (assertions) 과 선행 조건문 (Preconditions) 은 ‘실행 시간 (runtime)’ 에 하는 검사입니다. 이는 어떤 코드를 더 실행하기 전에 핵심적인 조건을 만족하고 있는지 확인하려고 사용합니다.
//단언문이나 선행 조건문에 있는 ‘불리언 조건’ 이 true 로 평가되면, 코드 실행을 평소처럼 계속합니다. 조건이 false 로 평가되면, 프로그램의 현재 상태는 무효가 되고; 코드 실행을 중지하며, 앱을 종료합니다.

//단언문과 선행 조건문의 사용은 ‘무효 조건은 생기지 않는다는 그런 식의 코드 설계’ 를 대체하지 않습니다.
//하지만, 유효한 자료와 상태를 강제하도록 이를 사용하는 것은 무효한 상태가 일어난 경우에도 앱이 좀 더 예측 가능하게 종료하도록 하며, 문제를 더 쉽게 ‘고치도록 (debug)’ 도와줍니다.
//무효한 상태를 감지하자 마자 곧바로 실행을 중지하는 것도 무효한 상태로 인한 피해를 제한하도록 도와줍니다.

//단언문과 선행 조건문의 차이점은 검사하는 시점에 있습니다: 단언문은 ‘디버그 빌드 (debug builds)’ 일 때만 검사하지만, 선행 조건문은 ‘디버그 빌드와 제품 빌드 (debug and production builds)’ 일 때 모두 검사합니다.
//제품 빌드일 때는, 단언문 내의 조건을 평가하지 않습니다. 이는 개발 과정 동안, 제품 성능의 손실없이, 원하는 만큼 많은 단언문을 사용할 수 있음을 의미합니다


//Debugging with Assertions (단언문으로 디버깅하기)
//단언문은 스위프트 표준 라이브러리의 assert(::file:line:) 함수를 호출하여 작성합니다. 이 함수에 true 나 false 로 평가할 표현식과 조건 결과가 false 이면 표시할 메시지를 전달합니다. 예를 들면 다음과 같습니다:
let age = -3
//asset(age >= 0, "A person's age can't be less than zero.")
// 이 단언문은 -3 이 >= 0 이 아니기 때문에 실패합니다.

//코드가 이미 조건을 검사했다면, 단언문이 실패했음을 나타내기 위해 assertionFailure(_:file:line:) 함수를 사용합니다. 예를 들면 다음과 같습니다:

if age > 10 {
  print("You can ride the roller-coaster or the first ferris wheel.")
} else if age >= 0 {
  print("You can ride the ferris wheel.")
//} else {
//  assertionFailure("A person's age can't be less than zero.")
}

//Enforcing Preconditions (선행 조건 강제하기)
//선행 조건문은, 코드를 계속 실행하려면 반드시 확실하게 (definitely) 참이어야 하는, 조건이 거짓이 될 잠재성을 가질 때마다 사용합니다. 예를 들어, 첨자 연산이 범위를 벗어나지 않았는지 검사하거나, 함수에 유효한 값이 전달 됐는지 검사하기 위해 선행 조건문을 사용하기 바랍니다.
//선행 조건문은 precondition(::file:line:) 함수를 호출하여 작성합니다. 이 함수에 true 나 false 로 평가할 표현식과 조건 결과가 false 이면 표시할 메시지를 전달합니다. 예를 들면 다음과 같습니다:

// 첨자 연산 (subscript) 의 구현부에서  ...
//precondition(index > 0, "Index must be greater than zero.")
//실패가 발생했다는 것-예를 들어, 모든 유효한 입력 자료는 ‘switch 문’ 의 다른 ‘case 절’ 에서 처리됐어야 함에도, ‘switch 문의 기본 (default) case 절’ 이 선택된 경우 등-을 나타내기 위해 preconditionFailure(_:file:line:) 함수를 호출할 수도 있습니다.

//: [Next](@next)
