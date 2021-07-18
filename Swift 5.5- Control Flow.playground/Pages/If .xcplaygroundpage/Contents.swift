//: [Previous](@previous)

import Foundation

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
