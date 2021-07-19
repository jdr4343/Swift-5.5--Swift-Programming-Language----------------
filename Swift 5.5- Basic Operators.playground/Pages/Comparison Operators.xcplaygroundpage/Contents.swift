//: [Previous](@previous)

import Foundation

//Comparison Operators (비교 연산자)
//스위프트는 다음의 비교 연산자 (comparison operators) 를 지원합니다.

//같음 (equal to; a == b)
//같지 않음 (not equal to; a != b)
//보다 큼 (greater than; a > b)
//보다 작음 (less than; a < b)
//크거나 같음 (greater than or equal to; a >= b)
//작거나 같음 (less than or equal to; a <= b)

//각 ‘비교 연산자’ 는 구문이 ‘참 (true)’ 인지의 여부를 나타내기 위해 Bool 값을 반환합니다:

1 == 1   // 참 (true), 1 은 1 과 같기 때문입니다.
2 != 1   // 참 (true), 2 는 1 과 같지 않기 때문입니다.
2 > 1    // 참 (true), 2 는 1 보다 크기 때문입니다.
1 < 2    // 참 (true), 1 은 2 보다 작기 때문입니다.
1 >= 1   // 참 (true), 1 은 1 보다 크거가 같기 때문입니다.
2 <= 1   // 거짓 (false), 2 는 1 보다 작거나 같지 않기 때문입니다.

//비교 연산자는 종종, if 문 같은, ‘조건문 (conditional statements)’ 에서 사용됩니다:
let temperature = 28
if temperature >= 30 {
    print("Hell")
}else if temperature >= 20{
    print("warm")
}else{
    print("Soso")
}

// ‘튜플 (tuples)’ 은 타입이 같고 값의 개수가 같은 경우 서로 비교할 수 있습니다. 튜플 비교는 왼쪽에서 오른쪽으로, 한번에 한 값씩, 두 값이 같지 않음을 찾을 때까지 비교합니다.
//이 두 값들을 비교한 후, 해당 비교 연산의 결과가 전체 튜플 비교의 결과를 결정합니다. 만약 모든 원소가 같은 거라면, 튜플 자체가 같은 것입니다. 예를 들면 다음과 같습니다
(2,"jihun") < (3, "hunsu")

(1, "zebra") < (2, "apple")   // 참, 1 이 2 보다 작기 때문입니다; "zebra" 와 "apple" 은 비교하지 않습니다.
(3, "apple") < (3, "bird")    // 참, 3 은 3 과 같고, "apple" 은 "bird" 보다 작기 때문입니다.
(4, "dog") == (4, "dog")      // 참, 4 는 4 와 같고, "dog" 도 "dog" 과 같기 때문입니다.
//: [Next](@next)
