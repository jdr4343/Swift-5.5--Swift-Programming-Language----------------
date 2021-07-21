//: [Previous](@previous)

import Foundation

//Property Observers (속성 관찰자)


//‘속성 관찰자 (property observers)’ 는 속성 값이 바뀌는 것을 관찰하고 이에 응답합니다. 속성 관찰자는 속성 값을 설정할 때마다 호출되는데, 새로운 값이 현재 속성 값과 똑같은 경우이더라도 호출됩니다.

//속성 관찰자는 다음 위치에 추가할 수 있습니다:

//직접 정의한 ‘저장 속성 (stored properties)’
//직접 상속 받은 ‘저장 속성 (stored properties)’
//직접 상속 받은 ‘계산 속성 (computed properties)’

//상속 받은 속성은, 하위 클래스에서 해당 속성을 ‘재정의 (overriding)’ 하여 속성 관찰자를 추가합니다. 직접 정의한 ‘계산 속성’ 은, 관찰자를 생성하려는 대신, 값이 바뀌는 것을 관찰하고 응답하기 위해 속성의 ‘설정자’ 를 사용합니다.


//속성은 다음 관찰자 중 하나만 정의할지 둘 다 정의할지 선택할 수 있습니다:

//willSet 은 값이 저장되기 바로 직전에 호출됩니다.
//didSet 은 새로운 값이 저장된 바로 직후에 호출됩니다.


//willSet 관찰자를 구현한 경우, 새로운 속성 값은 ‘상수 매개 변수’ 로써 전달됩니다. 이 매개 변수의 이름은 willSet 구현부에서 지정할 수 있습니다. 매개 변수 이름과 괄호를 구현부에서 작성하지 않은 경우, 매개 변수를 ‘기본 매개 변수 이름’ 인 newValue 로 사용 가능합니다.

//didSet 관찰자를 구현한 경우, 예전 속성 값을 담고 있는 ‘상수 매개 변수’ 가 전달됩니다. 매개 변수의 이름을 지을 수도 있고 ‘기본 매개 변수 이름’ 인 oldValue 를 사용할 수도 있습니다. 자신의 didSet 관찰자에서 속성에 값을 할당한 경우, 새로운 할당 값이 직전에 설정한 것을 대체합니다.

struct Money {
    var currencyRate: Double = 1100 {
        willSet {
            print("환율이 \(currencyRate)에서 \(newValue)으로 변경될 예정 입니다.")
        }
        didSet {
            print("환율이 \(oldValue)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
}
//이렇게 값이 바뀌게 되면 로그가 남게 됩니다. 예정일때 willSet이 출력되고 변경된후 didSet이 출력됩니다.
var money = Money()
money.currencyRate = 1232


//다음은 willSet 과 didSet 에 대한 실제 사례입니다. 아래 예제는 StepCounter 라는 새로운 클래스를 정의하는데, 이는 사람이 걷는 동안의 총 걸음 수를 추적합니다. 이 클래스는 사람의 운동 습관을 추적하기 위해 ‘만보계 (pedometer)’ 또는 다른 ‘걸음 측정기 (step counter)’ 의 입력 자료를 사용할 수도 있을 것입니다.

class StepCounter {
  var totalSteps: Int = 0 {
    willSet(newTotalSteps) {
      print("About to set totalSteps to \(newTotalSteps)")
    }
    didSet {
      if totalSteps > oldValue  {
        print("Added \(totalSteps - oldValue) steps")
      }
    }
  }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps





//: [Next](@next)
