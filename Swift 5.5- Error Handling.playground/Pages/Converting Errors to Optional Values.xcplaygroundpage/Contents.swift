//: [Previous](@previous)

import Foundation

//에러를 옵셔널 값으로 변환하기 (Converting Errors to Optional Values)
//try? 구문을 사용해 에러를 옵셔널 값으로 변환할 수 있습니다. 만약 에러가 try? 표현 내에서 발생한다면, 그 표현의 값은 nil이 됩니다. 예를들어 다음 코드의 x와 y는 같은 값을 갖습니다.

func someThrowingFunction() throws -> Int {
    return try someThrowingFunction()
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}
    
    
//에러 발생을 중지하기 (Disabling Error Propagation)
//함수나 메소드에서 에러가 발생되지 않을 것이라고 확신하는 경우 try!를 사용할 수 있습니다. 혹은 runtime assertion을 사용해 에러가 발생하지 않도록 할 수 있습니다. 하지만 만약 에러가 발생하면 런타임 에러가 발생하게 됩니다.
    
    
//정리 액션 기술 (Specifying Cleanup Actions)
    
//defer 구문을 이용해 함수가 종료 된 후 파일 스트림을 닫거나, 사용했던 자원을 해지 하는 등의 일을 할 수 있습니다. defer가 여러개가 있는 경우 가장 마지막 줄부터 실행 됩니다. 즉 bottom-up 순으로 실행 됩니다.
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file) // block이 끝나기 직전에 실행, 주로 자원 해제나 정지에 사용
        }
        while let line = try file.readline() {
            // Work with the file.
        }
        // close(file) is called here, at the end of the scope.
    }
}
//: [Next](@next)
