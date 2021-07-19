//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
//Counting Characters (문자 개수 세기)

//문자열에서 Character 값의 개수를 가져오려면, 문자열의 count 속성을 사용합니다:

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// "unusualMenagerie has 40 characters" 를 인쇄합니다.


var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// "the number of characters in cafe is 4" 를 인쇄합니다.

word += "\u{301}"       // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.count)")
// "the number of characters in café is 4" 를 인쇄합니다.







//: [Next](@next)
