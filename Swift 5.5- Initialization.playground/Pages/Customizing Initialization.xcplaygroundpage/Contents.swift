//: [Previous](@previous)

import Foundation

//Customizing Initialization (초기화를 사용자 정의하기)
//초기화 과정은, 다음 부분에서 설명하는 것처럼, 입력 매개 변수와 옵셔널 속성 타입으로, 또는 초기화하는 동안 상수 속성을 할당함으로써, 사용자 정의할 수 있습니다.

//Initialization Parameters (초기화 매개 변수)
//초기자의 정의는, 초기화 과정을 사용자 정의하는 값의 타입과 이름을 정의하도록, 초기화 매개 변수(initialization parameters) 를 제공할 수 있습니다


struct Celsius {
  var temperatureInCelsius: Double
  init(fromFahrenheit fahrenheit: Double) {
    temperatureInCelsius = (fahrenheit - 32.0) / 1.8
  }
  //첫번쨰 초기자는 fronFahernheit 라는 ArgumentLabel과 fahrenheit라는 parameter를 가진 단일 초기화 매개 변수를 가지고 있습니다.
  init(fromKelvin kelvin: Double) {
    temperatureInCelsius = kelvin - 273.15
  }
  //두번째 초기자도 위 형식과 비슷한 단일 초기화 매개 변수를 가지고 있습니다.
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius 는 100.0 입니다.
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius 는 0.0 입니다.
//두 초기자 모두 자신의 단일 인자를 관련된 섭씨 값으로 변환하며 temperatureInCelsius 라는 속성에 이값을 저장합니다.



//Initializer Parameters Without Argument Labels (매개 변수 이름과 인자 이름표)
//함수 및 메소드 매개 변수에서 처럼, ‘초기화 매개 변수’ 는 초기자 본문에서 사용하기 위한 ‘매개 변수 이름’ 과 초기자를 호출할 때 사용하기 위한 ‘인자 이름표’ 를 둘 다 가질 수 있습니다.
//하지만, 초기자는 함수와 메소드가 하는 방식대로 자신의 괄호 앞에 식별용 ‘함수 이름’ 을 가지진 않습니다
//초기자 매개 변수의 이름과 타입은 어떤 초기자를 호출해야 하는지 식별하는데 특히 중요한 역할을 담당합니다. 이 때문에, 직접 제공하지 않을 경우 스위프트는 초기자의 모든 (every) 매개 변수에 대해 ‘자동 인자 이름표’ 를 제공합니다.


struct Color {
  let red, green, blue: Double
  init(red: Double, green: Double, blue: Double) {
    self.red   = red
    self.green = green
    self.blue  = blue
  }
    //초기자는 red,green,blue 라는 ArgumentLabel을 가지고 있습니다.
  init(white: Double) {
    red   = white
    green = white
    blue  = white
  }
    //두 초기자 모두 가각의 초기자 매개변수에 named value를 제공함으로 새로운 Color 인스턴스를 생성하는데 사용할수 있습니다.
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//이 초기자들은 ArgumentLabel 를 사용해서 호출하고 있습니다

//let veryGreen = Color(0.0, 1.0, 0.0)
// 이는 컴파일-시간 에러라고 보고합니다 - ArgumentLabel은 필수입니다



//Initializer Parameters Without Argument Labels (인자 이름표가 없는 초기자 매개 변수)
//초기자 매개 변수에 인자 이름표를 사용하고 싶지 않으면, 해당 매개 변수에 ‘명시적인 인자 이름표’ 대신 ‘밑줄 (underscore; _)’ 를 작성하여 기본 작동 방식을 ‘재정의 (override)’ 합니다.


struct Celsiu1s {
  var temperatureInCelsius: Double
  init(fromFahrenheit fahrenheit: Double) {
    temperatureInCelsius = (fahrenheit - 32.0) / 1.8
  }
  init(fromKelvin kelvin: Double) {
    temperatureInCelsius = kelvin - 273.15
  }
  init(_ celsius: Double) {
    temperatureInCelsius = celsius
  }
    //모든 초기자들이 ArgumentLabel을 _ 언더스코어를 이용해서 생략하고 있습니다.기본적인 파라미터와 타입만 지정 해주었습니다.
}
let bodyTemperature = Celsiu1s(37.0)
// bodyTemperature.temperatureInCelsius 는 37.0 입니다.



//Optional Property Types (옵셔널 속성 타입)
//자신만의 사용자 정의 타입이-초기화 동안 값을 설정할 수 없거나, 나중의 어떤 시점에 “값이 없을” 수도 있기 때문에-논리적으로 “값이 없음 (no value)” 을 허용한 저장 속성을 가질 경우, 그 속성은 옵셔널 (optional) 타입으로 선언합니다.
//옵셔널 타입인 속성은, 초기화 동안 속성의 “값이 아직 없음” 은 일부로 의도한 것임을 지시하는, nil 값으로 초기화 됩니다.


class SurveyQuestion {
  var text: String
  var response: String?
  init(text: String) {
    self.text = text
  }
  func ask() {
    print(text)
  }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// "Do you like cheese?" 를 인쇄합니다.
cheeseQuestion.response = nil

//‘설문 조사 (survey question)’ 에 대한 응답은 질문하기 전까지는 알 수 없으므로, response 속성을 String?, 또는 “옵셔널 String” 타입으로 선언합니다.



//Assigning Constant Properties During Initialization (초기화하는 동안 상수 속성 할당하기)
//상수 속성의 값은, 초기화를 종료할 때까지 확실한 값이 설정되기만 한다면, 초기화 동안의 어떤 시점에도 할당할 수 있습니다. 상수 속성에 값을 한 번 설정하고 나면, 더 이상 수정할 수 없습니다.
//클래스 인스턴스에서의, 상수 속성은 이를 도입한 클래스의 초기화 동안에만 수정할 수 있습니다. 하위 클래스에서 수정할 수는 없습니다.

class SurveyQuestion1 {
  let text: String
  var response: String?
  init(text: String) {
    self.text = text
  }
  func ask() {
    print(text)
  }
}
let beetsQuestion = SurveyQuestion1(text: "How about beets?")
beetsQuestion.ask()
// "How about beets?" 를 인쇄합니다.
beetsQuestion.response = "I also like beets. (But not with cheese.)"
// 위의 예제는 인스턴스를 생성하고 나면 질문은 바뀔수 없을을 지시하기 위해 질문에 대한 text 속성을 변수속성 대신 상수속성으로 선언하였습니다. text 속성은 이제 상수일지라도 여전히 클래스이 초기자에서 설정 할수 있습니다.

//: [Next](@next)
