//: [Previous](@previous)

import Foundation

//Constants, Variables, Properties, and Subscripts (상수, 변수, 속성, 그리고 첨자 연산)
//상수, 변수, 또는 속성은 자신의 타입보다 더 ‘공개 (public)’ 적일 수 없습니다.8 예를 들어, ‘개인 전용 (private) 타입’ 을 가진 ‘공용 (public) 속성’ 을 작성하는 것은 유효하지 않습니다.

//상수, 변수, 속성, 또는 첨자 연산이 ‘개인 전용 타입’ 을 사용할 경우, 그 상수, 변수, 속성, 또는 첨자 연산도 반드시 private 이라고 표시해야 합니다:

class SomePrivateClass {
    
}

private var privateInstance = SomePrivateClass()


//Getters and Setters (‘획득자’ 와 ‘설정자’)
//상수, 변수, 속성, 또는 첨자 연산을 위한 ‘획득자 (getters)’ 와 ‘설정자 (setters)’ 는 자신이 속한 상수, 변수, 속성, 또는 첨자 연산과 똑같은 접근 수준을 자동으로 부여 받습니다.

//‘설정자’ 는, 해당 변수, 속성, 또는 첨자 연산에 대한 ‘읽고-쓰기’ 영역 범위를 제약하기 위해, 자신과 연관된 ‘획득자’ 보다 더 낮은 (lower) 접근 수준을 부여할 수 있습니다. ‘더 낮은 접근 수준’ 은 ‘var’ 또는 ‘subscript 도입자 (introducer)’ 앞에 fileprivate(set), private(set), 또는 internal(set) 을 작성함으로써 할당합니다.

//이 규칙은 ‘계산 속성’ 뿐만 아니라 ‘저장 속성’ 에도 적용됩니다.

//아래 예제는, 문자열 속성이 수정된 횟수를 추적하는, TrackedString 이라는 구조체를 정의합니다:
struct TrackedString {
  private(set) var numberOfEdits = 0
  var value: String = "" {
    didSet {
      numberOfEdits += 1
    }
  }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")
// "The number of edit is 3" 를 인쇄합니다.









//: [Next](@next)
