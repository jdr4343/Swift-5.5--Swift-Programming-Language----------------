//: [Previous](@previous)

import Foundation
//함수 내부에서 새로운 함수를 구현하는 방법에 대해 알아봅시다.
//Nested Functions은 우리말로 내포된 함수라고 정의 됩니다.

func outer() {
    print("Outer")
}

func inner(){
    print("inner")
}
outer()
inner()

//위의 두 함수는 모두 글로벌 스코프에서 선언되어 있고 다른 함수에도 포함되지 않았습니다.이런 함수는 Nested Functions 내포된 함수가 아닙니다.

//inner 함수를 outer 함수에 집어 넣어면 inner 함수가 내포된 함수가 됩니다.Nested Functions이라고 다른 문법이 아니라 다름 함수 내부에 포함되면 Nested Functions이 됩니다.


func outer1() {
    func inner(){
        print("inner")
    }

    print("Outer")
    inner()
}

//GloverFunction 과 NestedFunctions 의 차이점은 호출할수있는 범위가 달라집니다.
outer1()
//inner1()
//위와 같이 inner1 코드를 호출할떄 에러가 발생하게 됩니다. 에러메시지를 보면 inner1이라는 이름을 인식할수 없다고 나옵니다. NestedFunctions이 되면 스코프가 선언된 함수 내부로 축소 됩니다. 그래서 outer1함수 밖에서는 inner1함수를 호출할수 없습니다.

//: [Next](@next)
