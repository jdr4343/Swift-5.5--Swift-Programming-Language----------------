//: [Previous](@previous)

import Foundation

//Function Parameters and Return Values (함수의 매개 변수와 반환 값)

//스위프트에서 함수의 매개 변수와 반환 값은 극도로 유연합니다. 이름없는 단일 매개 변수를 가진 단순한 ‘보조용 (utility) 함수’ 부터 의미 전달력이 좋은 매개 변수 이름과 서로 다른 매개 변수 옵션을 가진 복잡한 함수까지 어떤 것이든 정의할 수 있습니다.



//Functions Without Parameters (매개 변수가 없는 함수)
//함수에서 입력 매개 변수를 정의하는 것은 필수가 아닙니다. 다음은, 호출할 때마다 항상 똑같은 String 메시지를 반환하는, 입력 매개 변수가 없는 함수입니다

func sayHelloWorld2() -> String {
  return "hello, world"
}
print(sayHelloWorld2( ))
// "hello, world" 를 인쇄합니다.
//어떤 매개 변수도 받지 않을지라도, 함수 정의에는 함수 이름 뒤의 괄호가 여전히 필요합니다. 함수를 호출할 때는 함수 이름 뒤에 빈 괄호 쌍도 붙여줘야 합니다.



//Functions with Multiple Parameters (매개 변수가 여러 개인 함수)
//함수는 함수 괄호 안에, 쉼표로 구분하여, 작성한, 다중 ‘입력 매개 변수’ 를 가질 수 있습니다.
func sayHelloWorld(Person: String) -> String {
  return "hello," + Person  + "world"
}

print(sayHelloWorld(Person: "Hunsu" ))

func greet(Person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return sayHelloWorld(Person: Person)
    } else {
        return sayHelloWorld(Person: Person) + "OH"
    }
}

print(greet(Person:"Jihun ", alreadyGreeted: true))





//Functions Without Return Values (반환 값이 없는 함수)
//함수에서 반환 타입을 정의하는 것은 필수가 아닙니다. 다음은, 자신의 String 값을 반환하지 않고 직접 인쇄하는, 버전의 greet(person:) 함수입니다.
func greet(person: String) {
  print("Hello, \(person)!")
}
greet(person: "Dave")
//값을 반환할 필요가 없기 때문에, 함수 정의가 ‘반환 화살표 (->)’ 나 반환 타입을 포함하지 않습니다.
//반환 타입을 정의하지 않은 함수는 Void 타입이라는 특수한 값을 반환합니다. 이는 단순히, () 라고 작성된, ‘빈 튜플 (tuple)’ 입니다.

//함수를 호출할 때는 반환 값을 무시할 수 있습니다:

func printAndCount(string: String) -> Int {
  print(string)
  return string.count
}
func printWithoutCounting(string: String) {
  let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
// "hello, world" 를 인쇄하고 12 라는 값을 반환합니다.
printWithoutCounting(string: "hello, world")
// "hello, world" 를 인쇄하지만 값을 반환하진 않습니다.

//첫 번째 함수인, printAndCount(string:) 은, 문자열을 인쇄한 다음, 문자 개수를 Int 로 반환합니다. 두 번째 함수인, printWithoutCounting(string:) 은, 첫 번째 함수를 호출하지만, 반환 값은 무시합니다.
//두 번째 함수를 호출할 때, 메시지는 첫 번째 함수로 여전히 인쇄하지만, 반환된 값은 사용하지 않습니다

//반환 값을 무시할 순 있지만, 값을 반환한다고 말한 함수는 반드시 항상 그렇게 해야 합니다.
//반환 타입을 정의한 함수는 값을 반환하지 않고는 함수 끝을 빠져나가는 제어를 허용하지 않으며, 그런 시도롤 하는 것은 ‘컴파일-시간 에러’ 가 되버릴 것입니다.



//Functions with Multiple Return Values (반환 값이 여러 개인 함수)
//여러 값을 하나의 ‘복합 (compound) 반환 값’ 으로 반환하기 위해 ‘튜플’ 타입을 함수의 반환 타입으로 사용할 수 있습니다.

//아래 예제는, Int 값의 배열에서 최소 값과 최대 값을 찾는, minMax(array:) 라는 함수를 정의합니다:

func minMax(array: [Int]) -> (min: Int, max: Int) {
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count] {
    if value < currentMin {
      currentMin = value
    } else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}

let bounds = minMax(array: [72, -6, 2, -71, 3, -81])
print("min is \(bounds.min) and max is \(bounds.max)")
// "min is -6 and max is 109" 를 인쇄합니다.




//: [Next](@next)
