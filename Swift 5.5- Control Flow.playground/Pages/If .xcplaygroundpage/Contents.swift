//: [Previous](@previous)

import Foundation
//Conditional Statements (조건문)
//정해진 조건에 따라 서로 다른 코드 부분을 실행하는 것이 유용할 때가 종종 있습니다. 에러가 발생할 때 부가적인 코드 부분을 실행하고 싶을 수도, 값이 너무 커지거나 작아지면 메시지를 보여주고 싶을 수도 있습니다. 이렇게 하기 위해, 코드 일부를 조건문 (conditional) 으로 만듭니다.

//스위프트는 조건 분기를 코드에 추가하는 방법을 두 가지로 제공합니다: if 문과 switch 문입니다. 전형적으로, if 문은 적은 결과만이 가능한 간단한 조건을 평가할 때 사용합니다. switch 문은 가능한 순서 조합이 여러 개인 좀 더 복잡한 조건에 더 적합하며 ‘유형 맞춤 (pattern matching; 패턴 매칭)’ 이 실행을 위한 적절한 코드 블럭 선택을 도와줄 수 있는 상황에서 유용합니다.









//If (if 문)
//가장 간단한 형식의, if 문은 단일 if 조건을 가집니다. 이는 해당 조건이 true 일 때만 ‘일련의 구문 집합’ 을 실행합니다.
//if 문은, if 조건이 false 인 상황을 위해, else clause (else 절) 이라는, 또 다른 구문 집합을 제공할 수 있습니다. 이 구문은 else 키워드로 지시합니다.
let num = 12

if num == 12 {
    print(true)
}else{
    print(false)
}

//추가적인 절을 고려하기 위해 ‘다중 if 문’ 을 서로 ‘연쇄 (chain)’ 할 수 있습니다.
let temperature = 32
if temperature <= 10 {
    print("cold")
}else if temperature <= 20  {
    print("good")
}else {
    print("so hot")
}
//: [Next](@next)
