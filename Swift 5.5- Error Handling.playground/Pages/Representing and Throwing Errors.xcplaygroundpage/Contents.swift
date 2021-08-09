//: [Previous](@previous)

import Foundation

//에러의 표시와 발생(Representing and Throwing Errors)

//Swift에서 에러는 Error 프로토콜을 따르는 타입의 값으로 표현됩니다.Swift의 열거형은 특별히 이런 관련된 에러를 그룹화(Grouping)하고 추가적인 정보를 제공하기에 적합합니다.

enum VendingMachineError: Error {
     case invalidSelection
     case insufficientFunds(coinsNeeded: Int)
     case outOfStock
}

//에러를 발생시키기 위해 throw 구문을 사용할 수 있습니다. 예를들어, 다음 코드는 판매 기기에서 5개의 코인이 더 필요하다는 에러를 발생시킵니다.
throw VendingMachineError.insufficientFunds(coinsNeeded: 5)

//: [Next](@next)
