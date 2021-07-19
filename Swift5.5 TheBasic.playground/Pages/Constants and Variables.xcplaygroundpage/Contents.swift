//: [Previous](@previous)

import Foundation

//Swift 5.5: The Basics (기초)
///https://xho95.github.io/swift/language/grammar/basics/2016/04/24/The-Basics.html
//Constants and Variables (상수와 변수)
//상수와 변수는 이름을 특정한 타입의 값과 결합합니다.상수 (constant) 의 값은 한번 설정하면 바꿀 수 없는 반면, 변수 (variable) 는 나중에 다른 값으로 설정할 수 있습니다.

//Declaring Constants and Variables (상수와 변수 선언하기)
let myName = "Jihun"
var myAge = 26

//여러 개의 상수 또는 여러 개의 변수를, ‘쉼표 (commas)’ 로 구분하여, 한 줄에 선언할 수 있습니다:
let x = 0.0, y = 0.0, z = 0.0


//Type Annotations (타입 보조 설명)
//‘타입 보조 설명’ 은 상수나 변수 이름 뒤에 콜론을 붙이고, 공백을 넣은 다음, 사용할 타입의 이름을 넣어서 작성합니다.
let myIphone: Int = 11
let myWatch: String = "Apple Watch Se"

//서로 관련된 동일 타입의 ‘다중 (multiple)’ 변수들은, 쉼표로 구분한 다음, 마지막 변수 이름 뒤에 ‘단일 타입 보조 설명’ 을 붙이는 것으로써, 한 줄에 정의할 수 있습니다
var red, green, blue: Double


//Naming Constants and Variables (상수와 변수 이름짓기)
//상수와 변수의 이름은, ‘유니코드 문자 (Unicode characters)’ 를 포함한, 거의 어떤 문자라도 가질 수 있습니다
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//기존 변수의 값은 호환 가능한 타입의 또 다른 값으로 바꿀 수 있습니다.변수와 달리, 상수의 값은 설정한 후에는 바꿀 수 없습니다.
 myAge = 13
 myAge = 32

//Printing Constants and Variables (상수와 변수 인쇄하기)
print(myAge)
print(myWatch)

//문자열 보간법 (string interpolation)’
print("Hello my name is \(myName)! i'm \(myAge) years old")




//: [Next](@next)
