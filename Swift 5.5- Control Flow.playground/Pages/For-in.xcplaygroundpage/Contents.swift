//: [Previous](@previous)


import Foundation
///https://xho95.github.io/swift/language/grammar/control-flow/for-in/while/switch/2020/06/10/Control-Flow.html
//Control Flow (제어 흐름)
//스위프트는 다양한 제어 흐름 구문을 제공합니다. 이는 작업을 여러 번 수행하는 while 반복문; 정해진 조건을 기초로 서로 다른 분기의 코드를 실행하는 if, guard, 및 switch 문; 그리고 실행 흐름을 코드의 또 다른 곳으로 전달하는 break 와 continue 같은 구문을 포함합니다.


//For-In Loops (for-in 반복문)
//for-in 반복문은, 배열이나, 수치 범위, 또는 문자열에 있는 문자들 같은, ‘시퀀스 (sequences)’ 에 동작을 반복하기 위해 사용합니다.
let fruit = ["Apple", "Melon", "Orange", "Graeph", "WaterMelon"]

for fruitName in fruit {
    print("My ShoppingList in \(fruitName)!")
}

//‘키-값 쌍 (key-value pairs)’ 에 접근하기 위해 ‘딕셔너리’ 에 동작을 반복시킬 수도 있습니다.
//Dictionary 의 ‘내용물 (contents)’ 은 태생적으로 순서가 없으며, 이에 동작을 반복시키는 것은 가져올 순서라는 보장이 없습니다.
let studentsClass = ["jihun": 2, "hunsu": 4, "Minju": 8]

for (name,Class) in studentsClass {
    print("My name is \(name) and class number is \(Class)")
}

//for-in 반복문은 ‘수치 범위 (numeric ranges)’ 와 같이 사용할 수도 있습니다. 다음 예제는 구구단 5-단의 처음 몇 ‘값들 (entries)’ 을 인쇄합니다:

for index in 1...9 {
    for indexpath in 1...9 {
        print("\(index) * \(indexpath) = \(index * indexpath)")
    }
}

//시퀀스’ 에서 각각의 값 필요하진 않는 경우, 변수 이름이 있는 곳에 ‘밑줄 (underscore; _)’ 을 사용함으로써 그 값을 무시할 수 있습니다.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
  answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// 예제는 한 수의 값을 다른 수로 거듭 제곱 (이 경우는, 3 의 10 제곱) 합니다. 이는 시작 값 1 (즉, 3 의 0 제곱) 에 3 을 곱하는 것을, 1 에서 시작해서 10 에서 끝나는 ‘닫힌 범위’ 를 사용하여, 열 번 수행합니다. 이런 계산에서는, 반복문을 매 번 통과할 때마다 ‘개별 횟수 값 (counter values)’ 이 필요 없습니다-코드가 단순히 반복문을 올바른 횟수만큼 실행합니다. 반복 변수 자리에 ‘밑줄 문자 (underscore character; _)’ 를 사용하면 개별 값을 무시하도록 하여 반복문의 각 ‘회차 (iteration)’ 마다 현재 값에 대한 접근을 제공하지 않도록 합니다.


// ‘낮은 경계 값 (lower bound)’ 은 포함하지만 ‘높은 경계 값 (upper bound)’ 은 빼고 싶으면 ‘반-열린 범위 연산자 (half-open operator; ..<)’ 를 사용합니다.
let minute = 60

for tickmark in 0..<minute {
    print(tickmark)
}

//원하지 않는 눈금을 건너뛰려면 stride(from:to:by:) 함수를 사용합니다.
let minuteintevel = 5
for tickmark in stride(from: 0, to: minute, by: minuteintevel) {
print(tickmark)
}

//닫힌 범위’ 역시, stride(from:through:by:) 로 대신 사용하는 것이, 가능합니다
let hour = 24
let hourIntervel = 3
for tickmark in stride(from: 3, through: hour, by: hourIntervel) {
    print(tickmark)
}
//stride(from:to:by:) 는 ‘반-열린 범위’ 를 대신하고, stride(from:through:by:) 는 ‘닫힌 범위’ 를 대신하는 것임을 알 수 있습니다.
//두개를 위예제에서 비교하자면 반열림 범위로 구현할경우 21 까지만 나올것이고 닫힘범위로 계산한다면 24까지 나옵니다.


//자체 구문
//for-in 반복문은, 배열이나, 수치 범위, 또는 문자열에 있는 문자들 같은, ‘시퀀스 (sequences)’ 에 동작을 반복하기 위해 사용합니다.
let ApartmentLake = [803, 303, 404, 201, 908]
for LakeList in ApartmentLake {
    print(LakeList)
}


//‘키-값 쌍 (key-value pairs)’ 에 접근하기 위해 ‘딕셔너리’ 에 동작을 반복시킬 수도 있습니다.
//Dictionary 의 ‘내용물 (contents)’ 은 태생적으로 순서가 없으며4, 이에 동작을 반복시키는 것은 가져올 순서라는 보장이 없습니다.
let ApatmentResident = [803: "JIhun", 303: "hunsu",404: "Jigu", 201: "sengmok", 908: "meyean"]
for ResidentList in ApatmentResident {
    print(ResidentList)
}
//for-in 반복문은 ‘수치 범위 (numeric ranges)’ 와 같이 사용할 수도 있습니다. 다음 예제는 구구단 5-단의 처음 몇 ‘값들 (entries)’ 을 인쇄합니다:
for index1 in 1...9 {
    for index2 in 1...9 {
        print("\(index1) * \(index2) = \(index1 * index2)")
    }
}

//시퀀스’ 에서 각각의 값 필요하진 않는 경우, 변수 이름이 있는 곳에 ‘밑줄 (underscore; _)’ 을 사용함으로써 그 값을 무시할 수 있습니다.
let a = 3
let b = 10
var c = 1

for _ in 1...b {
    c *= a
}
print("\(a) to the power of \(b) is \(c)")
// 예제는 한 수의 값을 다른 수로 거듭 제곱 (이 경우는, 3 의 10 제곱) 합니다. 이는 시작 값 1 (즉, 3 의 0 제곱) 에 3 을 곱하는 것을, 1 에서 시작해서 10 에서 끝나는 ‘닫힌 범위’ 를 사용하여, 열 번 수행합니다. 이런 계산에서는, 반복문을 매 번 통과할 때마다 ‘개별 횟수 값 (counter values)’ 이 필요 없습니다-코드가 단순히 반복문을 올바른 횟수만큼 실행합니다. 반복 변수 자리에 ‘밑줄 문자 (underscore character; _)’ 를 사용하면 개별 값을 무시하도록 하여 반복문의 각 ‘회차 (iteration)’ 마다 현재 값에 대한 접근을 제공하지 않도록 합니다.


// ‘낮은 경계 값 (lower bound)’ 은 포함하지만 ‘높은 경계 값 (upper bound)’ 은 빼고 싶으면 ‘반-열린 범위 연산자 (half-open operator; ..<)’ 를 사용합니다.
let myTime = 24
for Time in 0..<myTime {
    print(Time)
}

//원하지 않는 눈금을 건너뛰려면 stride(from:to:by:) 함수를 사용합니다.
let Recess = 3
for Time in stride(from: 0, to: myTime, by: Recess) {
    print(Time)
}

//원하지 않는 눈금을 건너뛰려면 stride(from:to:by:) 함수를 사용합니다.


//: [Next](@next)
