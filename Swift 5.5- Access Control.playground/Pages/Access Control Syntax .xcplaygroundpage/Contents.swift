//: [Previous](@previous)

import Foundation
//Access Control Syntax (접근 제어 구문)
//‘개체’ 의 ‘접근 수준’ 은 ‘개체’ 선언의 맨 앞에 open, public, internal, fileprivate, 또는 private 수정자를 붙임으로써 정의합니다.

public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}


//Custom Types (사용자 정의 타입)

//‘사용자 정의 타입’ 에 명시적인 접근 수준을 지정하고 싶으면, 타입을 정의하는 시점에 그렇게 합니다. 그러면 새로운 타입을 접근 수준이 허가하는 어디서나 사용할 수 있습니다.

public class SomePublicClass1 {                  // 명시적인 공용 클래스
  public var somePublicProperty = 0             // 명시적인 공용 클래스 멤버
  var someInternalProperty = 0                  // 암시적인 내부 클래스 멤버
  fileprivate func someFilePrivateMethod() {}   // 명시적인 파일-전용 클래스 멤버
  private func somePrivateMethod() {}           // 명시적인 개인 전용 클래스 멤버
}

class SomeInternalClass1 {                       // 암시적인 내부 클래스
  var someInternalProperty = 0                  // 암시적인 내부 클래스 멤버
  fileprivate func someFilePrivateMethod() {}   // 명시적인 파일-전용 클래스 멤버
  private func somePrivateMethod() {}           // 명시적인 개인 전용 클래스 멤버
}

fileprivate class SomeFilePrivateClass1 {        // 명시적인 파일-전용 클래스
  func someFilePrivateMethod() {}               // 암시적인 파일-전용 클래스 멤버
  private func somePrivateMethod() {}           // 명시적인 개인 전용 클래스 멤버
}

private class SomePrivateClass1 {                // 명시적인 개인 전용 클래스
  func somePrivateMethod() {}                   // 암시적인 개인 전용 클래스 멤버
}

//Tuple Types (튜플 타입)

//튜플 타입은 클래스, 구조체, 열거체, 그리고 함수가 하는 방식의 ‘독립적인 정의’ 를 가지지 않습니다. 튜플 타입의 접근 수준은 튜플 타입을 이루는 타입들에 의해 자동으로 결정되며, 명시적으로 지정할 순 없습니다.


//: [Next](@next)
