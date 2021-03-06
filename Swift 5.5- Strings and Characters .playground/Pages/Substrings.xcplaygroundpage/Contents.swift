//: [Previous](@previous)

import Foundation

//Substrings (하위 문자열)

//문자열에서 ‘하위 문자열 (substring)’ 을 가져올 때-예를 들어, ‘첨자 연산’ 이나 prefix(_:) 같은 메소드를 사용하는 경우-결과는, 또 하나의 문자열이 아니라, Substring 의 인스턴스입니다.
//스위프트의 ‘하위 문자열’ 은 문자열과 거의 똑같은 메소드를 가지는데, 이는 문자열을 작업할 때와 똑같은 방식으로 하위 문자열과 작업할 수 있다는 것을 의미합니다.
//하지만, 문자열과는 달리, 하위 문자열은 문자열 작업을 하는 짧은 시간 동안에만 사용합니다. 결과를 더 오랫동안 저장할 준비가 됐을 때, 하위 문자열을 String 의 인스턴스로 변환합니다. 예를 들면 다음과 같습니다:

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning 은 "Hello" 입니다.

// 오랜-기간 저장하기 위해 결과를 String 으로 변환합니다.
let newString = String(beginning)

//문자열과 같이, 각 하위 문자열은 하위 문자열을 이루는 문자들이 저장된 메모리 영역을 가지고 있습니다.
//문자열과 하위 문자열의 차이점은 하위 문자열의 경우, 성능 최적화로 의해, 원래의 문자열을 저장하고자 사용하는 메모리, 또는 다른 하위 문자열을 저장하고자 사용하는 메모리를 재사용할 수 있다는 것입니다.
//이런 성능 최적화는 문자열이나 하위 문자열 중 하나를 수정하기 전까지 메모리 복사를 위한 성능 비용을 지불하지 않아도 된다는 것을 의미합니다.
//위에서 언급한 것처럼, 하위 문자열은 ‘오랜-기간 저장 (long-term storage)’ 하는 데는 적합하지 않습니다-왜냐면 이는 원래 문자열의 저장 공간을 재사용하므로, 하위 문자열 중 어떤 것이든 사용 중이라면 반드시 원래 문자열 전체를 메모리에 유지해야 하기 때문입니다.

//위 예제에서, greeting 은 문자열인데, 이는 문자열을 이루는 문자들이 저장된 메모리 영역을 가지고 있음을 의미합니다. beginning 은 greeting 의 하위 문자열이기 때문에, 이는 greeting 이 사용하는 메모리를 재사용합니다. 이와는 대조적으로, newString 은 문자열입니다-하위 문자열을 써서 생성할 때, 이는 자신만의 저장 공간을 가지게 됩니다.
//Recources 파일의 String and Chatacter에 사진 첨부 해놨습니다.

