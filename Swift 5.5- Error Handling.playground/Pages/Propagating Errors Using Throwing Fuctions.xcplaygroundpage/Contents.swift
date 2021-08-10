//: [Previous](@previous)

import Foundation

enum VendingMachineError: Error {
     case invalidSelection
     case insufficientFunds(coinsNeeded: Int)
     case outOfStock
}
//에러 처리(Handling Errors)

//에러가 발생하면 특정 코드영역이 해당 에러를 처리하도록 해야합니다. 예를들어, 문제를 해결하거나, 혹은 우회할 수 있는 방법을 시도하거나 아니면 사용자에게 실패 상황을 알리는 것이 에러 처리의 방법이 될 수 있습니다.

//Swift에서 4가지 에러를 처리 방법이 있습니다.
//첫째로 에러가 발생한 함수에서 리턴값으로 에러를 반환해 해당 함수를 호출한 코드에서 에러를 처리하도록 하는 방법,
//두번째로 do-catch 구문을 사용하는 방법,
//세번째로 옵셔널 값을 반환하는 방법,
//마지막으로 assert를 사용해 강제로 크래쉬를 발생시키는 방법입니다.


//에러를 발생시키는 함수 사용하기(Propagating Errors Using Throwing Fuctions)

//어떤 함수, 메소드 혹은 초기자가 에러를 발생 시킬 수 있다는 것을 알리기 위해서 throw 키워드를 함수 선언부의 파라미터 뒤에 붙일 수 있습니다.

func canThrowErrors() throws -> String {
    return try canThrowErrors()
}
func cannotThrowErrors() -> String{
    return cannotThrowErrors()
}
//오직 throwing function만이 에러를 발생시킬 수 있습니다. 만약 throwing function이 아닌 함수에서 throw가 발생한다면 반드시 그 함수내에서 throw에 대해 처리돼야 합니다.
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 0)
    ]
    var coinsDeposited = 0

    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")
    }
}



let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
     let snackName = favoriteSnacks[person] ?? "Candy Bar"
     try vendingMachine.vend(itemNamed: snackName)
}



struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}


//Do-Catch를 이용해 에러를 처리하기(Handling Error Using Do-Catch)
//do-catch를 이용해 에러를 처리하는 코드 블럭을 작성할 수 있 수 있습니다. 만약 에러가 do 구문 안에서 발생한다면 발생하는 에러의 종류를 catch 구문으로 구분해 처리할 수 있습니다.

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 6
do {
    try buyFavoriteSnack(person: "Eve", vendingMachine: vendingMachine)
    print("Success! Yum.")
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
} catch {
    print("Unexpected error: \(error).")
}
// Prints "Insufficient funds. Please insert an additional 2 coins."




func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch is VendingMachineError {    // 모든 VendingMachineError 구분을 위해 is를 사용
        print("Invalid selection, out of stock, or not enough money.")
    }
}



do {
    try nourish(with: "Chips")
} catch {
    print("Unexpected non-vending-machine-related error: \(error)")
      // 여기에서 처럼 catch를 그냥 if-else에서 else 같이 사용 가능
}
// Prints "Invalid selection, out of stock, or not enough money."



















//: [Next](@next)
