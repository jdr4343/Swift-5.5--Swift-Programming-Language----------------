//: [Previous](@previous)

import Foundation
//Error Handling (에러 처리)

//프로그램 실행 중 마주칠 수도 있는 에러 조건에 응답하기 위해 에러 처리 (error handling) 를 사용합니다.
//함수는 에러 조건과 마주칠 때, 에러를 던집니다 (throws). 이러면 해당 함수의 ‘호출자 (caller)’ 가 에러를 잡아내고 (catch) 적절하게 응답할 수 있습니다.

//함수는 선언 시에 throws 키워드를 포함하는 것으로써 에러를 던질 수 있음을 나타냅니다.
func canThrowAnError() throws {
  // 이 함수는 에러를 던질 수도 있고 아닐 수도 있습니다.
}

// 에러를 던질 수 있는 함수를 호출할 땐, try 키워드를 표현식 ‘앞에 붙입니다.
//catch 절에서 처리될 때까지 에러를 자동으로 현재 범위 밖으로 전파합니다.

do {
  try canThrowAnError()
  // 에러가 던져지지 않았습니다.
} catch {
  // 에러가 던져 졌습니다.
}

//do 구문은, 에러를 하나 이상의 catch 절로 전파하도록 하는. 새로운 ‘포함 영역 (containing scope)’ 을 생성합니다.




//: [Next](@next)
