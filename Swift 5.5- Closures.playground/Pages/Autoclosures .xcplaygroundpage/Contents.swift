//: [Previous](@previous)

import Foundation

//Autoclosures (자동 클로저)
//자동 클로저 (autoclosure) 는 함수에 인자로 전달 중인 표현식을 포장하여 자동으로 생성되는 클로저입니다. 이는 어떤 인자도 취하지 않으며, 호출될 때, 자신 안에 포장된 표현식의 값을 반환합니다.



var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// "5" 를 인쇄합니다.

//자동 클로저는, 클로저를 호출할 때까지 그 안의 코드를 실행하지 않기 때문에, ‘값 평가 (evaluation)’ 를 지연시켜 줍니다. 값 평가를 지연하는 것은, 해당 코드를 평가하는 시점을 제어하게 해주므로, 코드가 ‘부작용 (side effect)’ 을 가지거나 계산 비용이 많이 들 때 유용합니다
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// "5" 를 인쇄합니다.

print("Now serving \(customerProvider())!")
// "Now serving Chris!" 를 인쇄합니다.
print(customersInLine.count)
// "4" 를 인쇄합니다.


// customersInLine 은 ["Alex", "Ewa", "Barry", "Daniella"] 입니다.
func serve(customer customerProvider: () -> String) {
  print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) })
// "Now serving Alex!" 를 인쇄합니다.


// 함수는 동일한 작업을 하지만, 명시적인 클로저를 취하는 대신, 매개 변수 타입을 @autoclosure 특성으로 표시함으로써 ‘자동 클로저’ 를 취합니다.
// customersInLine 은 ["Ewa", "Barry", "Daniella"] 입니다.
func serve(customer customerProvider: @autoclosure () -> String) {
  print("Now serving \(customerProvider())!")
}

serve(customer: customersInLine.remove(at: 0))
// "Now serving Ewa!" 를 인쇄합니다.


// customersInLine 은 [Barry", "Daniella"] 입니다.
var customerProviders: [() -> String] = []

func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
  customerProviders.append(customerProvider)
}

collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
// "Collected 2 closures." 를 인쇄합니다.
for customerProvider in customerProviders {
  print("Now serving \(customerProvider())!")
}
// "Now serving Barry!" 를 인쇄합니다.
// "Now serving Daniella!" 를 인쇄합니다.

//: [Next](@next)
