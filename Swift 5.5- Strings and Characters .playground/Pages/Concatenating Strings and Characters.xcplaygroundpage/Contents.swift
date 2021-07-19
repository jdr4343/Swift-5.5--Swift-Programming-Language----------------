//: [Previous](@previous)

import Foundation

//Concatenating Strings and Characters (문자열과 문자 이어붙이기)
//String 값은 새로운 String 값을 생성하기 위해 ‘더하기 연산자 (+)’ 로 서로 더하거나- 이어붙일 (concatenated)-수 있습니다

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome 은 이제 "hello there" 입니다.

//String 값을 기존 String 변수에 ‘더하기 할당 연산자 (+=)’ 로 덧붙일 수도 있습니다:

var instruction = "look over"
instruction += string2
// instruction 은 이제 "look over there" 입니다.

//Character 값은 String 변수에 String 타입의 append() 메소드로 덧붙일 수 있습니다:

let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome 은 이제 "hello there!" 입니다.
//이런 식으로 추가해야 되는 이유는 String 이나 Character 를 기존 Character 변수에 덧붙일 수는 없는데, Character 값은 반드시 단일 문자만 담을 수 있기 때문입니다.

//더 긴 줄의 문자열을 제작하기 위해 ‘여러 줄짜리 문자열 글자 값’ 을 사용 중인 경우, 마지막 줄을 포함한, 문자열의 모든 줄이 ‘줄 끊음 (line break)’ 으로 끝나길 원할 것입니다.
//아래의 예와 같이 한줄을 띄어쓴다면 이쁘게 출력됩니다.

let basStart = """
one
two
"""

let end = """
three
"""
print(basStart + end)
// 다음의 두 줄을 출력합니다:
// one
// twothree

let goodStart = """
one
two

"""
print(goodStart + end)
// 다음의 세 줄을 출력합니다:
// one
// two
// three
//: [Next](@next)
