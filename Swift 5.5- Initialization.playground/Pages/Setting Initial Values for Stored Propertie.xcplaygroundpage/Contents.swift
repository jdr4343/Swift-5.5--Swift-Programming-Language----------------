//: [Previous](@previous)

import Foundation
///https://xho95.github.io/xcode/swift/grammar/initialization/2016/01/23/Initialization.html
//Setting Initial Values for Stored Properties (저장 속성에 대한 초기 값 설정하기)

//클래스와 구조체는 해당 클래스나 구조체의 인스턴스가 생성될 때까지 자신의 모든 저장 속성에 반드시 (must) 적절한 초기 값을 설정해야 합니다. 저장 속성을 ‘결정하지 않은 상태’ 로 남겨둘 수는 없습니다.

//Initializers (초기자)
//초기자 (initializers) 는 특정 타입의 새로운 인스턴스를 생성하기 위해 호출됩니다. 가장 단순한 형식의, 초기자는, init 키워드로 작성된, 매개 변수가 없는 인스턴드 메소드와 같습니다:

//init() {
  // 여기에서 일정한 초기화를 수행함
//}


//이니셜라이저는 우리말로 생성자로 불립니다.구조체 열거형 클래스는 모두 설계도 입니다.설계도를 기반으로 생성한것을 인스턴스라도 부릅니다.
//다른언어에서는 객체에 한해서 인스턴스라는 용어를 사용하지만 스위프트에서는 구분없이 사용합니다. 새로운 인스턴스를 생성하는것을 초기화라고 합니다.
//인스턴스에 초기화를 담당하는것이 바로  Initializer입니다 초기화의 목적은 매우 단순하고 명확합니다. 모든 속성을 기본값으로 초기화 해서 인스턴스를 기본상태로 만드는 것입니다.
//인스턴스가 정상적으로 초기화 되었다는것은  Initializer 의 실행이 완료되었을떄 모든 속성이 기본값을 가지고 있다는 뜻입니다. 만약 기본값이 없는 속성이 존재한다면 초기화는 실패하고 인스턴스는 생성되지 않습니다.






//아래 예제는 ‘화씨 (Fahrenheit)’ 눈금으로 표현된 온도를 저장하는 Fahrenheit 라는 새로운 구조체를 정의합니다. Fahrenheit 구조체는, Double 타입의, temperature 라는, 저장 속성을 하나 가지고 있습니다:

struct Fahrenheit {
  var temperature: Double
  init() {
    temperature = 32.0
  }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
// "The default temperature is 32.0° Fahrenheit" 를 인쇄합니다.


//Default Property Values (기본 속성 값)
//위에서 본 것처럼, 저장 속성의 초기 값은 ‘초기자’ 에서 설정할 수 있습니다. 대안으로, 속성의 선언2에서 기본 속성 값 (default property value) 을 지정합니다. ‘기본 속성 값’ 은 정의할 때 속성에 초기 값을 할당함으로써 지정합니다.

//속성이 항상 똑같은 초기 값을 취한다면, 초기자에서 값을 설정하는 대신 ‘기본 값’ 을 제공하도록 합니다. 최종 결과는 똑같지만, 기본 값은 속성의 초기화를 선언과 더 가깝게 묶어줍니다.


//위에 있는 Fahrenheit 구조체는 속성을 선언하는 시점에 temperature 속성에 기본 값을 제공함으로써 더 간단한 형식으로 작성할 수 있습니다:

struct Fahrenheit1 {
  var temperature = 32.0
}



//: [Next](@next)
