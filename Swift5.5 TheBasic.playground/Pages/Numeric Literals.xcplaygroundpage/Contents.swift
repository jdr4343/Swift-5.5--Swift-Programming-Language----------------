//: [Previous](@previous)

import Foundation

//Numeric Literals (수치 글자 값)

//‘정수 글자 값 (integer literals)’ 은 다음처럼 작성합니다:

//10진 (decimal) 수는, 접두사 없음
//2진 (binary) 수는, 0b 접두사 사용
//8진 (octal) 수는, 0o 접두사 사용
//16진 (hexadecimal) 수는, 0x 접두사 사용
//다음의 모든 정수 글자 값은 10진수로 17 이라는 값을 가집니다:

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 의 2진 표기법
let octalInteger = 0o21           // 17 의 8진 표기법
let hexadecimalInteger = 0x11     // 17 의 16진 표기법


//‘부동-소수점 글자 값’ 은 (접두사 없는) 10진수, 또는 (접두사가 0x 인) 16진수일 수 있습니다. 반드시 ‘소수점 (decimal point)’ 양 쪽에는 항상 수 (또는 16진수) 가 있어야 합니다.
//‘10진 부동수 (decimal floats)’ 는 옵션으로 지수 (exponent) 를 가질 수 있으며, 대문자 또는 소문자 e 로 나타냅니다; ‘16진 부동수 (hexadecimal floats)’ 는 반드시 지수를 가져야 하며, 대문자 또는 소문자 p 로 나타냅니다.

//지수가 exp 인 10진수에는, ‘밑수 (base number)’9 에 10exp 이 곱해집니다:

//1.25e2 는 1.25 x 102, 또는 125.0 를 의미합니다.
//1.25e-2 는 1.25 x 10-2, 또는 0.0125 를 의미합니다.
//지수가 exp 인 16진수에는, ‘밑수’ 에 2exp 이 곱해집니다:

//0xFp2 는 15 x 22, 또는 60.0 을 의미합니다.
//0xFp-2 는 15 x 2-2, 또는 3.75 를 의미합니다.
//다음의 모든 부동-소수점 글자 값은 10진수로 12.1875 라는 값을 가집니다:

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
//‘수치 글자 값’ 은 이해하기 더 쉽도록 부가적인 ‘양식 (formatting)’ 을 가질 수 있습니다. 정수와 ‘부동수 (floats)’ 둘 다 부가적인 ‘0’ 으로 채울 수도 있고 가독성을 돕고자 ‘밑줄 (underscores)’ 을 가질 수도 있습니다. 양식이 어떻든 ‘글자 값’ 의 실제 값에는 영향이 없습니다:

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
//: [Next](@next)
