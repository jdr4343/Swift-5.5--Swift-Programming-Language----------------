//: [Previous](@previous)

import Foundation


//Accessing Superclass Methods, Properties, and Subscripts (상위 클래스의 메소드, 속성, 그리고 첨자 연산에 접근하기)
//하위 클래스를 위해 메소드, 속성, 또는 첨자 연산을 ‘재정의’ 할 때, 기존 상위 클래스 구현을 ‘재정의’ 의 일부로 사용하는 것이 유용할 때가 있습니다. 예를 들어, 해당 기존 구현의 작동 방식을 개량하거나, 기존에 상속한 변수에 수정된 값을 저장할 수도 있습니다.

//적절한 곳에서는, super 접두사를 사용함으로써 상위 클래스 버전의 메소드, 속성, 또는 첨자 연산에 접근할 수 있습니다:

//someMethod() 라는 이름의 ‘재정의된 메소드’ 는 ‘재정의하는 메소드 구현’ 내에서 super.someMethod() 를 호출함으로써 상위 클래스 버전의 someMethod() 를 호출할 수 있습니다.
//someProperty 라는 ‘재정의된 속성’ 은 ‘재정의하는 획득자 또는 설정자 구현’ 내에서 super.someProperty 로 상위 클래스 버전의 someProperty 에 접근할 수 있습니다.
//someIndex 에 대해서 ‘재정의된 첨자 연산’ 은 ‘재정의하는 첨자 연산 구현’ 내에서 super[someIndex] 로 동일 첨자 연산에 대한 상위 클래스 버전에 접근할 수 있습니다.

class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Circle: Figure {
   var radius = 0.0
    
    var GoodMorning = "hello"
    
    //읽기 전용 속성 추가
    var diameter: Double {
        return radius * 2
    }
    
    //Figure에 있는 메소드와 구분하기 위해서 로그를 수정하겠습니다.
    override func draw() {
        super.draw()//이렇게 super 키워드를 추가해주면 Figure에 있는 draw 메소드가 먼저 실행된 다음에 Overriding 한 메소드에 있는 코드를 실행합니다.
        //상위구현을 기반으로 구현 할떄에는 항상 이런 패턴을 사용합니다. 보통은 지금처럼 상위구현을 먼저 호출하지만 subclass에서 구현한 코드를 먼저 실행한다음에 상위구현을 호출하는것도 가능합니다.
       print("🥰")
    }
 }















//: [Next](@next)
