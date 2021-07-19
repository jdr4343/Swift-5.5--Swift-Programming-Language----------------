//: [Previous](@previous)

import Foundation
//Strings and Characters (문자열과 문자)
///https://xho95.github.io/swift/grammar/strings/characters/2016/05/29/Strings-and-Characters.html
//문자열 (string) 은, "hello, world" 나 "albatross" 처럼, 문자들이 연속된 것입니다. 스위프트 문자열은 String 타입으로 표현합니다. String 의 ‘내용물 (contents)’ 에는, Character 값의 ‘컬렉션 (collection)’2 을 포함한, 다양한 방법으로 접근할 수 있습니다.

//String Literals (문자열 글자 값)
//미리 정의된 String 값을 코드 내에 ‘문자열 글자 값 (string literals)’ 으로 포함할 수 있습니다. ‘문자열 글자 값’ 은 ‘큰 따옴표 (")’ 로 둘러싼 연속된 문자들를 말합니다.
let someString = "Some string literal value"

//Multiline String Literals (여러 줄짜리 문자열 글자 값)
//여러 줄에 걸쳐진 문자열이 필요한 경우, 큰 따옴표 세 개로 둘러싼 연속된 문자열인-‘여러 줄짜리 문자열 글자 값 (multiline string literal)’ 을 사용합니다 여기서 주의 할점은 """다음에 바로 String을 작성하는게 아니라 한줄을 띄고 작성하는 것입니다.
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

//소스 코드가 ‘여러 줄짜리 문자열 글자 값’ 안에 ‘줄 끊음’ 을 포함할 땐, 해당 ‘줄 끊음’ 이 문자열 값에도 나타납니다.
//‘줄 끊음’ 을 써서 소스 코드를 더 이해하기 쉽게 만들고 싶지만, ‘줄 끊음’ 이 문자열 값 일부가 되진 않길 원하는 경우, 해당 줄 끝에 ‘역 빅금 (backslash; \)’ 을 작성합니다
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(quotation)
print(softWrappedQuotation)


//‘여러 줄짜리 문자열 글자 값’ 이 ‘줄 끊음’ 으로 시작하거나 끝나게 만들려면, 첫 번째 또는 마지막 줄에 빈 줄을 작성합니다. 예를 들면 다음과 같습니다:

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreaks)


//Special Characters in String Literals (문자열 글자 값에 있는 특수 문자)
//‘문자열 글자 값’ 은 다음의 특수 문자를 포함할 수 있습니다:

//  (본래의 의미를) ‘벗어난 (escaped)9 특수 문자’ 들, \0 (널-null 문자), \\ (역 빗금-backslash), \t (가로 탭-tab), \n (줄 먹임-line feed)10, \r (캐리지-carriage 반환), \" (큰 따옴표) 그리고 \' (작은 따옴표)
//  \u{n} 라고 작성하는, 임의의 ‘유니코드 크기 값 (Unicode scalar11 value)’, 여기서 n 은 1-8 자리 16진수입니다.

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"         // $, 유니코드 크기 값 U+0024
let blackHeart = "\u{2665}"       // ♥, 유니코드 크기 값 U+2665
let sparklingHeart = "\u{1F496}"  // 💖, 유니코드 크기 값 U+1F496

//여러 줄짜리 문자열 글자 값’ 은 하나가 아니라 세 개의 큰 따옴표를 사용하기 때문에, ‘벗어나게 (escaping)’12 하지 않고도 ‘여러 줄짜리 문자열 글자 값’ 안에 ‘큰 따옴표 (")’ 를 포함할 수 있습니다.
//‘여러 줄짜리 문자열’ 이 """ 을 ‘글자 (text)’ 로써 포함하려면, 최소 하나 이상의 따옴표는 ‘벗어나야 (escape)’ 합니다. 예를 들면 다음과 같습니다:

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation mark \"\"\"

"""
print(threeDoubleQuotationMarks)

//Extended String Delimiters (확장된 문자열 구분자)
//특수 문자를 효과 발현 없이 문자열에 포함시키기 위해 ‘문자열 글자 값’ 을 ‘확장된 구분자 (extended delimiters)’ 내에 위치시킬 수 있습니다. 문자열을 따옴표 (") 안에 위치시키고 이를 ‘번호 기호 (number signs; #)’ 로 감쌉니다.
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes:\(sda)? """
"""#
print(threeMoreDoubleQuotationMarks)
//: [Next](@next)
