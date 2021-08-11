//: [Previous](@previous)

import Foundation

//Trailing Closures (끝자리 클로저)
//클로저 표현식을 함수의 최종 인자로 전달해야 하는데 그 클로저 표현식이 아주 길 경우, 이 대신 끝자리 클로저 (trailing closure) 를 작성하는 것이 유용할 수 있습니다. ‘끝자리 클로저’ 는, 여전히 함수의 인자이면서도, 함수 호출 괄호 뒤에 작성합니다. ‘끝자리 클로저 구문 표현’ 을 사용할 때는, 함수 호출에서 ‘첫 번째 클로저’ 에 대한 인자 이름표 (argument label) 는 작성하지 않습니다. 함수 호출은 ‘다중 (multiple) 끝자리 클로저’ 를 포함할 수 있습니다; 하지만, 아래 첫 몇몇 예제는 ‘단일 끝자리 클로저’ 를 사용합니다.

//끝자리 클로저는 클로저를 한 줄로 작성하는 것이 불가능할 정도로 아주 길 때 가장 유용합니다. 예를 들어 보면, 스위프트의 Array 타입은 map(_:) 메소드를 가지는데, 이는 클로저 표현식을 단일 인자로 취합니다. 이 클로저는 배열의 각 항목마다 한 번씩 호출되며, 해당 항목에 대한 (타입이 다를 수도 있는) 또 다른 ‘맵핑된 값 (mapped value; 대응 값)’9 을 반환합니다.


//다음은 Int 값 배열을 String 값 배열로 변환하기 위해 끝자리 클로저로 map(_:) 메소드를 사용하는 방법입니다. [16, 58, 510] 라는 배열을 사용하여 [ "OneSix", "FiveEight", "FiveOneZero"] 라는 새로운 배열을 생성합니다:
let digitNames = [
  0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
  5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
  var number = number
  var output = ""
    
  repeat {
    output = digitNames[number % 10]! + output
    number /= 10
  } while number > 0
  return output
}
// strings 는 [String] 타입으로 추론됩니다.
// 값은 ["OneSix", "FiveEight", "FiveOneZero"] 입니다.
print(strings)






//func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
//  if let picture = download("photo.jpg", from: server) {
//    completion(picture)
//  } else {
//    onFailure()
//  }
//}
//
//loadPicture(from: someServer) { picture in
//  someView.currentPicture = picture
//} onFailure: {
//  print("Couldn't download the next picture.")
//}









//: [Next](@next)
