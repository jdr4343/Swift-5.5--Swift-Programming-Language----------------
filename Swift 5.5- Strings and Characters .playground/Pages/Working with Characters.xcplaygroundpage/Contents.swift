//: [Previous](@previous)

import Foundation

//Working with Characters (문자 다루기)
//String 의 개별 Character 값은 for-in 반복문으로 문자열에 ‘동작을 반복하는 것 (interating over)’ 으로 접근할 수 있습니다
for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶

//독립된 Character 생성
let a: Character = "ㄷ"

//String 값은 Character 값의 배열을 초기자의 인자로 전달하는 것으로써 생성할 수 있습니다:

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// "Cat!🐱" 을 인쇄합니다.
//Double값에 Int를 할당할떄와 마찬가지로 Character에도 String을 할당하여 문자열을 만들수 있습니다.


//: [Next](@next)
