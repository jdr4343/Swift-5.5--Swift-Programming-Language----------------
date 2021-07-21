//: [Previous](@previous)

import Foundation
//Overriding (재정의하기)
//하위 클래스는 다른 경우라면 상위 클래스에서 상속할 인스턴스 메소드, 타입 메소드, 인스턴스 속성, 타입 속성, 또는 ‘첨자 연산 (subscript)’ 에 대하여 자신만의 구현을 제공할 수 있습니다. 이를 재정의 (overriding) 라고 합니다.

//다른 경우라면 상속하게될 ‘성질 (characteristics)’ 을 재정의하려면, 재정의할 정의에 override 키워드를 접두사로 붙입니다.


//super Class로 부터 상속한 멤버를 재정의하는 방법에 대해 알아봅시다
//super Class로 부터 상속받은 멤버가 subclass구현에 맞게 재정의 하는걸 Overriding 이라고 합니다.
//Overriding이 가능한 대상은 methods,property.subscripts,initializers입니다.
//Overriding은 두가지 방식으로 구현합니다. superClass 구현을 기반으로 새로운 코드를 추가하거나 superClass 구현을 무시하고 완전히 새롭게 구현하는 것 입니다.


class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

//여기에서 drow 메소드를 Overriding 하겠습니다
//Figure class 에서 drow 메소드를 복사한 다음에 Circle class로 옮기겠습니다.
//Overriding 선언은 override 키워드가 필요하니 추가해줍니다.
class Circle: Figure {
   var radius = 0.0
    
    var GoodMorning = "hello"
    
    //읽기 전용 속성 추가
    var diameter: Double {
        return radius * 2
        //4)여기에서 diameter 속성을 읽기전용 계산속성으로 선언했습니다. oval 인스턴스를 통해서 diameter 속성에 값을 저장할수는 있지만 diameter 속성이 변수 저장속성으로 바뀌지 않고 읽기 전용속성인것은 변함이 없습니다.
    }
    
    //Figure에 있는 메소드와 구분하기 위해서 로그를 수정하겠습니다.
    override func draw() {
        super.draw()//이렇게 super 키워드를 추가해주면 Figure에 있는 draw 메소드가 먼저 실행된 다음에 Overriding 한 메소드에 있는 코드를 실행합니다.
        //상위구현을 기반으로 구현 할떄에는 항상 이런 패턴을 사용합니다. 보통은 지금처럼 상위구현을 먼저 호출하지만 subclass에서 구현한 코드를 먼저 실행한다음에 상위구현을 호출하는것도 가능합니다.
       print("🥰")
    }
 }






















//: [Next](@next)
