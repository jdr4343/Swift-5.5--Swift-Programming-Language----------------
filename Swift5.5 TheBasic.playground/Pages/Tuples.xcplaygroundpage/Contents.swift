//: [Previous](@previous)

import Foundation

//Tuples (튜플; 짝)
//튜플 (tuples) 은 여러 값을 ‘단일 복합 값’ 으로 그룹짓습니다. 튜플 내의 값은 어떤 타입도 될 수 있으며 서로 같은 타입일 필요도 없습니다.

let http404Error = (404, "Not Found")
// http404Error 은 (Int, String) 타입이고, 값은 (404, "Not Found") 입니다.(404, "Not Found") 라는 튜플은 Int 와 String 을 함께 그룹지어서 HTTP 상태 코드에 별도인 두 개의 값: ‘하나의 수’ 와 ‘사람이-이해할 수 있는 설명’ 을 부여합니다.
//이는 “(Int, String) 타입인 튜플” 이라고 설명할 수 있습니다.

//튜플의 내용은 별도의 상수나 변수로 분해 (decompose) 한 다음, 평소 처럼 접근할 수 있습니다
let dict = ["a": 1, "b":2, "c":3]
for (key,value) in dict {
    print("dict key list = \(key)")
    print("dict value list = \(value)")
}

//튜플 값에서 일부만 필요한 경우, 튜플을 분해할 때 ‘밑줄 (underscore; _) 을 써서 튜플 일부를 무시합니다:
let (statusCode, _) = http404Error
print("The status code is \(statusCode)")

//대안으로, 0 으로 시작하는 ‘색인 번호 (index numbers)’ 을 사용하여 튜플의 개별 원소 값에 접근합니다:
http404Error.0
http404Error.1

//튜플을 정의할 때 튜플의 개별 원소에 이름을 붙일 수 있습니다:
let myMother = (motherName: "kangsuyean", motherAge: 53)
print(myMother.motherAge)
//: [Next](@next)
