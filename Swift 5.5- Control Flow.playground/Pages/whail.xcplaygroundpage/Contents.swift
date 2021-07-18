import UIKit

//While Loops (while 반복문)
//-In Loops (for-in 반복문)
//for-in 반복문은, 배열이나, 수치 범위, 또는 문자열에 있는 문자들 같은, ‘시퀀스 (sequences)’ 에 동작을 반복하기 위해 사용합니다.
let fruit = ["Apple", "Melon", "Orange", "Graeph", "WaterMelon"]

for fruitName in fruit {
    print("My ShoppingList in \(fruitName)!")
}

//‘키-값 쌍 (key-value pairs)’ 에 접근하기 위해 ‘딕셔너리’ 에 동작을 반복시킬 수도 있습니다.
//Dictionary 의 ‘내용물 (contents)’ 은 태생적으로 순서가 없으며4, 이에 동작을 반복시키는 것은 가져올 순서라는 보장이 없습니다.
let studentsClass = ["jihun": 2, "hunsu": 4, "Minju": 8]

for (name,Class) in studentsClass {
    print("My name is \(name) and class number is \(Class)")
}

//for-in 반복문은 ‘수치 범위 (numeric ranges)’ 와 같이 사용할 수도 있습니다. 다음 예제는 구구단 5-단의 처음 몇 ‘값들 (entries)’ 을 인쇄합니다:
