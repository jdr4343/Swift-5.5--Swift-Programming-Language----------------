//: [Previous](@previous)

import Foundation
//딕셔너리 (dictionary) 는 똑같은 타입인 키들과 똑같은 타입인 값들 사이의 ‘결합 (associations)’ 을 ‘정의된 순서’ 없이 ‘집합체 (collection)’ 에 저장합니다.
// 값은 유일한 키 (key) 와 결합되며, 이는 딕셔너리 내에서 해당 값을 위한 ‘식별자 (identifier)’ 로 작동합니다.

//Dictionary Type Shorthand Syntax (딕셔너리 타입의 줄임 구문 표현)
//Key 는 딕셔너리의 키로 사용될 수 있는 값의 타입이며, Value 는 딕셔너리가 해당 키로 저장하는 값의 타입입니다.

//온전한 타입
let dict: Dictionary<String,String>
//Creating an Empty Dictionary (빈 딕셔너리 생성하기)
//줄임 구문
var shortdict = [String: String]()
let emptydict: [String: String] = [:]

//Creating a Dictionary with a Dictionary Literal (딕셔너리 글자 값으로 딕셔너리 생성하기)

var numOfDIct: [String: Int] = ["A": 1, "B": 2, "C": 3, "M": 23, "V": 77]
//배열에서 처럼, 일관성 있는 타입의 키와 값을 가진 딕셔너리로 초기화하는 경우 디셔너리의 타입을 작성하지 않아도 됩니다.
var shortNumDict = ["A": 1, "B": 2]

//Accessing and Modifying a Dictionary (딕셔너리 접근하기와 수정하기)
print("number of Dictionary time\(numOfDIct.count)")

if numOfDIct.isEmpty {
    print("is empty")
}else{
    print("No,number of Dictionat have \(numOfDIct.count) time")
}

//‘첨자 연산 구문 표현’ 으로 딕셔너리에 새 항목을 추가할 수 있습니다. ‘첨자 연산의 색인 (subscript index)’ 으로 적절한 타입의 새로운 키를 사용해서, 적절한 타입의 새로운 값을 할당합니다
numOfDIct["D"] = 4
numOfDIct


//‘첨자 연산 구문 표현’ 은 특정 키와 결합되어 있는 값을 바꾸는데도 사용합니다:
numOfDIct["A"] = 12
numOfDIct
//첨자 연산의 대안으로, 특정 키에 대한 값을 설정하거나 갱신하려면 딕셔너리의 updateValue(_:forKey:) 메소드를 사용합니다.
//updateValue(_:forKey:) 메소드는 딕셔너리의 값 타입에 대한 ‘옵셔널 (optional) 값’ 을 반환합니다.
if let oldvalue = numOfDIct.updateValue( 32, forKey: "C") {
    print(numOfDIct)
}


//‘첨자 연산 구문 표현’ 은 딕셔너리에서 특정 키에 대한 값을 가져오기 위해 사용할 수도 있습니다. 값이 존재하지 않는 키로 요청할 수도 있기 때문에, 딕셔너리의 첨자 연산은 딕셔너리의 ‘값 타입’ 에 대한 ‘옵셔널 값’ 을 반환합니다.
//첨자 연산이 해당 키에 존재하고 있는 값을 담은 ‘옵셔널 값’ 을 반환합니다. 다른 경우라면, 첨자 연산이 nil 을 반환합니다:
if let NumberOfdict = numOfDIct["C"] {
    print("The number is \(NumberOfdict)")
}else{
    print("is empty")
}

//‘첨자 연산 구문 표현’ 은 해당 키에 nil 값을 할당함으로써 딕셔너리에서 ‘키-값 쌍’ 을 삭제하기 위해 사용할 수 있습니다:
numOfDIct["D"] = nil
numOfDIct
//또 다른 방법으로, removeValue(_:forKey) 메소드로 딕셔너리에서 ‘키-값 쌍’ 을 삭제합니다.값이 존재하지 않았으면 nil 을 반환합니다
numOfDIct.removeValue(forKey: "C")
numOfDIct
//removeValue(_:forKey) 메소드로 값을 지울경우 지워진 값을 출력합니다.
if let numRemoved = numOfDIct.removeValue(forKey: "A") {
    print("key C: \(numRemoved) is removed")
} else {
    print("numOfDIct don't have C")
}


//Iterating Over a Dictionary (딕셔너리에 동작을 반복시키기)
//딕셔너리에 있는 ‘키-값 쌍’ 들은 for-in 반복문으로 ‘동작을 반복시킬 (iterate over)’ 수 있습니다. 딕셔너리의 각 항목은 (key, value) 튜플로써 반환됩니다.Dictionary는 순서가 정해지지 않았기 때문에 순서가 일정하지 않습니다
for (numkey,numvalue) in numOfDIct {
    print(numkey,numvalue)
}
//keys 와 values 속성에 접근함으로써 ‘반복 가능한 집합체 (iterable collection)’ 로 가져올 수도 있습니다:
for numkey in numOfDIct.keys {
    print("numKey \(numkey)")
}
for numvalue in numOfDIct.values {
    print(numvalue)
}
// keys 또는 values 속성으로 새로운 배열을 초기화 할수 있습니다.
//Dictionary 타입은 ‘정의된 순서 (defined ordering)’ 를 가지고 있지 않습니다. 지정된 순서로 딕셔너리의 키 또는 값들에 동작을 반복시키려면, keys 또는 values 속성에 sorted() 메소드를 사용합니다.
let insertDicKey = numOfDIct.keys
let insertDicValue = numOfDIct.values
print(insertDicKey.sorted())
print(insertDicValue)




//자체 구문
//온전한 타입
var emptydict1: Dictionary<String, String>
//Creating an Empty Dictionary (빈 딕셔너리 생성하기)
var emptyDict: [String:String] = [:]
//줄임 구문
var emptyDict2 = [String:String]()
//Creating a Dictionary with a Dictionary Literal (딕셔너리 글자 값으로 딕셔너리 생성하기)
var Person: [String: Int] = ["Jihun": 26,"Hunsu": 23, "Hunsea": 20, "Minju": 20 ]

//배열에서 처럼, 일관성 있는 타입의 키와 값을 가진 딕셔너리로 초기화하는 경우 디셔너리의 타입을 작성하지 않아도 됩니다.
var trainNum = [2: "교대", 3: "옥수", 4: "사당", 1: "신도림"]
//Accessing and Modifying a Dictionary (딕셔너리 접근하기와 수정하기)
trainNum.count
print("I change \(trainNum.count) stops when I'm going to work.")

trainNum.isEmpty
if trainNum.isEmpty {
    print("yes, is empty")
}else{
    print("No,rot of train stop")
}
//‘첨자 연산 구문 표현’ 으로 딕셔너리에 새 항목을 추가할 수 있습니다. ‘첨자 연산의 색인 (subscript index)’ 으로 적절한 타입의 새로운 키를 사용해서, 적절한 타입의 새로운 값을 할당합니다
//깂추가
trainNum[7] = "고속터미널"
trainNum


//‘첨자 연산 구문 표현’ 은 특정 키와 결합되어 있는 값을 바꾸는데도 사용합니다:
//값 교체
trainNum[3] = "신사"
trainNum
//첨자 연산의 대안으로, 특정 키에 대한 값을 설정하거나 갱신하려면 딕셔너리의 updateValue(_:forKey:) 메소드를 사용합니다.
//updateValue(_:forKey:) 메소드는 딕셔너리의 값 타입에 대한 ‘옵셔널 (optional) 값’ 을 반환합니다.
if let oldvalues = trainNum.updateValue("잠실", forKey: 2) {
    print(trainNum)
}

//‘첨자 연산 구문 표현’ 은 딕셔너리에서 특정 키에 대한 값을 가져오기 위해 사용할 수도 있습니다. 값이 존재하지 않는 키로 요청할 수도 있기 때문에, 딕셔너리의 첨자 연산은 딕셔너리의 ‘값 타입’ 에 대한 ‘옵셔널 값’ 을 반환합니다.
trainNum[2]

//첨자 연산이 해당 키에 존재하고 있는 값을 담은 ‘옵셔널 값’ 을 반환합니다. 다른 경우라면, 첨자 연산이 nil 을 반환합니다:
trainNum[8]
//‘첨자 연산 구문 표현’ 은 해당 키에 nil 값을 할당함으로써 딕셔너리에서 ‘키-값 쌍’ 을 삭제하기 위해 사용할 수 있습니다:
trainNum[2] = nil
//또 다른 방법으로, removeValue(_:forKey) 메소드로 딕셔너리에서 ‘키-값 쌍’ 을 삭제합니다.값이 존재하지 않았으면 nil 을 반환합니다
trainNum.removeValue(forKey: 3)
//removeValue(_:forKey) 메소드로 값을 지울경우 지워진 값을 출력합니다.
if let a = trainNum.removeValue(forKey: 4) {
    print("removed Value \(a)")
}

//Iterating Over a Dictionary (딕셔너리에 동작을 반복시키기)
//딕셔너리에 있는 ‘키-값 쌍’ 들은 for-in 반복문으로 ‘동작을 반복시킬 (iterate over)’ 수 있습니다. 딕셔너리의 각 항목은 (key, value) 튜플로써 반환됩니다.Dictionary는 순서가 정해지지 않았기 때문에 순서가 일정하지 않습니다
for train in trainNum {
    print(train)
}

//keys 와 values 속성에 접근함으로써 ‘반복 가능한 집합체 (iterable collection)’ 로 가져올 수도 있습니다:
for trainKey in trainNum.keys {
    print(trainKey)
}

for trainValue2 in trainNum.values {
    print(trainValue2)
}
// keys 또는 values 속성으로 새로운 배열을 초기화 할수 있습니다.
//Dictionary 타입은 ‘정의된 순서 (defined ordering)’ 를 가지고 있지 않습니다. 지정된 순서로 딕셔너리의 키 또는 값들에 동작을 반복시키려면, keys 또는 values 속성에 sorted() 메소드를 사용합니다.
trainNum.keys
let trainUnOtherKey = trainNum.keys
trainUnOtherKey.sorted()























//: [Next](@next)
