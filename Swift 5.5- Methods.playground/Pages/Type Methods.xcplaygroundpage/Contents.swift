//: [Previous](@previous)

import Foundation

//Type Methods (타입 메소드)

//인스턴스 메소드는, 위에서 설명한 것처럼, 특정 타입의 인스턴스에서 호출하는 메소드 입니다.타입 자체에서 호출하는 메소드 역시 정의할 수 있습니다.
//이러한 종류의 메소드를 타입 메소드 (type methods) 라고 합니다. 타입 메소드는 메소드의 func 키워드 앞에 static 키워드를 작성함으로써 지시합니다.
//클래스는, 해당 메소드의 상위 클래스 구현을 하위 클래스에서 재정의하는 것을 허용하기 위해, 대신 class 키워드를 사용할 수 있습니다. 
//static으로 선언 하면 오버라이딩이 금지됩니다

//다음은 SomeClass 라는 클래스에서 ‘타입 메소드’ 를 호출하는 방법입니다:

class SomeClass {
  class func someTypeMethod() {
    // 타입 메소드 구현은 여기에 둡니다.
  }
}
SomeClass.someTypeMethod()


//아래 예제는, 게임 단계 또는 수준 별로 참여자의 진행 상황을 추적하는, LevelTracker 라는 구조체를 정의합니다. ‘단일-참여자 (single-player) 게임’ 이지만, 단일 기기에서의 ‘다중-참여자 (multi-player)’ 정보를 저장할 수 있습니다.

//게임에 처음 참여할 때는 (첫 단계를 빼고) 모든 게임 단계가 잠겨 있습니다. 참여자가 단계를 종료할 때마다, 해당 단계가 이 기기의 모든 참여자에게 풀립니다. LevelTracker 구조체는 어느 게임 단계가 풀려있는지 추적하기 위해 타입 속성과 타입 메소드를 사용합니다. 이는 개별 참여자에 대한 현재 단계도 추적합니다.

struct LevelTracker {
  static var highestUnlockedLevel = 1
  var currentLevel = 1

  static func unlock(_ level: Int) {
    if level > highestUnlockedLevel { highestUnlockedLevel = level }
  }

  static func isUnlocked(_ level: Int) -> Bool {
    return level <= highestUnlockedLevel
  }

  @discardableResult
  mutating func advance(to level: Int) -> Bool {
    if LevelTracker.isUnlocked(level) {
      currentLevel = level
      return true
    } else {
      return false
    }
  }
}

//LevelTracker 구조체는, 아래 보인 것처럼, 개별 참여자의 진행 상황을 추적하고 갱신하기 위해, Player 클래스와 함께 사용됩니다:

class Player {
  var tracker = LevelTracker()
  let playerName: String
  func complete(level: Int) {
    LevelTracker.unlock(level + 1)
    tracker.advance(to: level + 1)
  }
  init(name: String) {
    playerName = name
  }
}


//새로운 참여자에 대한 Player 클래스의 인스턴스를 생성하고, 참여자가 첫 단계를 완료할 때 무슨 일이 일어나는지 봅니다:

var player = Player(name: "Argyrious")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// "highest unlocked level is now 2" 를 인쇄합니다.
//두 번째 참여자를 생성해서, 어떤 참여자도 아직 게임에서 풀은 적이 없는 단계로 이동하려고 하면, 참여자의 현재 단계를 설정하는 시도가 실패합니다:

player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
  print("player is now on level 6")
} else {
  print("level 6 has not yet been unlocked")
}
// "level 6 has not yet been unlocked" 를 인쇄합니다.












//: [Next](@next)
