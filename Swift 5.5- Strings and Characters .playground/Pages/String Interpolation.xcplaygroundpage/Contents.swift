//: [Previous](@previous)

import Foundation

//String Interpolation (문자열 보간법)
//문자열 보간법 (string interpolation) 은 ‘문자열 글자 값’ 안에 상수, 변수, 글자 값, 그리고 표현식의 값을 포함시켜 섞음으로써 새로운 String 값을 생성하는 방법입니다.
//문자열 글자 값 안에 집어 넣을 각 항목은 괄호 쌍으로 포장하고, ‘역 빗금 (backslash; \)’ 접두사를 붙입니다: = \()
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message 는 "3 times 2.5 is 7.5" 입니다.

//다른 경우라면 문자열 보간법으로 취급될 문자를 담고 있는 문자열을 생성하기 위해 ‘확장된 문자열 구분자 (extended string delimiters)’ 를 사용할 수 있습니다. 예를 들면 다음과 같습니다.
//보는 바와 같이 확장된 구분자를 사용하면 특수문자도 문자열 취급 할수 있습니다.! 무야호!!!

print(#"Write an interpolated string in Swift using \(multiplier)."#)
// "Write an interpolated string in Swift using \(multiplier)." 를 인쇄합니다.


//‘확장된 구분자’ 를 사용하는 문자열에서 ‘문자열 보간법’ 을 사용하려면, ‘역 빗금 (backslash)’ 뒤의 ‘번호 기호’ 개수를 문자열 시작과 끝에 있는 ‘번호 기호’ 개수와 일치시키면 됩니다. 예를 들면 다음과 같습니다:
//무야호 ..! 구분자에서도 추가할수 있습니다.
print(#"6 times 7 is \#(6 * 7)."#)
//"6 times 7 is 42." 를 출력합니다.


//: [Next](@next)
