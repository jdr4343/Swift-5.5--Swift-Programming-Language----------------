//: [Previous](@previous)

import Foundation


//Properties (속성)
//속성 (properties) 은 값을 특정 클래스, 구조체, 또는 열거체와 결합합니다. ‘저장 (stored) 속성’ 은 상수와 변수 값을 인스턴스 일부로 저장하는 반면, ‘계산 (computed) 속성’ 은 값을 (저장하는 대신) 계산합니다. ‘계산 속성’ 은 클래스, 구조체, 그리고 열거체가 제공합니다. ‘저장 속성’ 은 클래스와 구조체만 제공합니다.
//저장 속성과 계산 속성은 대체로 특정 타입의 인스턴스와 결합됩니다. 하지만, 속성은 타입 그 자체와 결합될 수도 있습니다. 그런 속성을 ‘타입 (type) 속성’ 이라고 합니다
//속성의 값이 바뀌는 것을 감시하는 ‘속성 관찰자 (property observers)’ 를 정의할 수 있는데, 이로써 응답시 사용자 정의 행동을 할 수 있습니다. ‘속성 관찰자’ 는 자신이 직접 정의한 ‘저장 속성’ 에 추가할 수 있으며, 상위 클래스에서 하위 클래스가 상속 받은 속성에도 추가할 수 있습니다.



//Stored Properties (저장 속성)
//가장 간단한 형식의, ‘저장 속성’ 은, 특정 클래스나 구조체 인스턴스에 저장되는 상수 또는 변수입니다. 형식내부에 변수와 상수를 선언하면 속성이 됩니다.
//저장 속성을 정의하면서 ‘기본 값 (default value)’ 을 제공할 수 있습니다. 초기화 동안에 저장 속성에 대한 초기 값을 설정하고 수정할 수도 있습니다.

struct FixedLengthRange {
  var firstValue: Int
  let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// 이 범위는 정수 값 0, 1, 2 를 표현합니다.
rangeOfThreeItems.firstValue = 6
// 이 범위는 이제 정수 값 6, 7, 8 을 표현합니다.

//FixedLengthRange 의 인스턴스는 firstValue 라는 ‘변수 저장 속성’ 과 length 라는 ‘상수 저장 속성’ 을 가집니다.



//Stored Properties of Constant Structure Instances (상수 구조체 인스턴스의 저장 속성)
//구조체의 인스턴스를 생성한 다음 해당 인스턴스를 상수에 할당하면, 인스턴스의 속성을, ‘변수 속성’ 으로 선언한 경우 이더라도, 그 속성을 수정할 수 없습니다

let rangeOfFourItems = FixedLengthRange(firstValue : 0, length: 4)
// 이 범위는 정수 값 0, 1, 2, 3 을 표현합니다.
//rangeOfFourItems.firstValue = 6
// 이는, firstValue 가 변수 속성일지라도, 에러를 보고할 것입니다.

//angeOfFourItems 을 (let 키워드를 가진) 상수로 선언했기 때문에, firstValue 가 변수 속성일지라도, 자신의 firstValue 속성을 바꾸는 것이 불가능합니다.

//이 작동 방식은 구조체가 값 타입 (value types) 이기 때문입니다. 값 타입의 인스턴스를 상수로 표시할 때는, 모든 속성 또한 그렇게 됩니다.

//이같은 일은, 참조 타입 (reference types) 인, 클래스에서는 일어나지 않습니다. 참조 타입의 인스턴스를 상수에 할당한 경우, 해당 인스턴스의 ‘변수 속성’ 은 여전히 바꿀 수 있습니다.



//Lazy Stored Properties (느긋한 저장 속성)
//느긋한 저장 속성 (lazy stored property) 은 처음으로 사용하게 될 때까지 초기 값을 계산하지 않는 속성입니다. ‘느긋한 저장 속성’ 은 선언 앞에 ‘lazy 수정자 (modifier)’ 를 작성하여 지시합니다.
//저장속성이 초기화 되는 시점은 인스턴스 초기화 시점과 같습니다.
//지연 저장 속성은 초기화를 지연시킵니다. 인스턴스가 초기화 되는 시점이 아니라 속성에 처음 접근하는 시점에 초기화를 진행합니다.


//아래 예제는 복잡한 클래스의 불필요한 초기화를 피하기 위해 ‘느긋한 저장 속성’ 을 사용합니다. 이 예제는 DataImporter 와 DataManager 라는, 둘 다 일부만 나타낸, 두 클래스를 정의합니다:

class DataImporter {
  /*
  DataImporter 는 외부 파일에서 자료를 불러오는 클래스입니다.
  이 클래스는 초기화하는데 유의미한 양의 시간이 걸린다고 가정합니다.
  */
  var filename = "data.txt"
  // DataImporter 클래스는 여기서 자료를 불러오는 기능을 제공할 것입니다.
}

class DataManager {
  lazy var importer = DataImporter()
  var data = [String]()
  // DataManager 클래스는 여기서 자료를 관리하는 기능을 제공할 것입니다.
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// importer 속성을 위한 DataImporter 인스턴스는 아직 생성하지 않습니다.

//lazy 수정자로 표시했기 때문에, importer 속성을 위한 DataImporter 인스턴스는, filename 속성을 조회할 때 같이, importer 속성을 맨 처음 접근할 때에만 생성됩니다:

print(manager.importer.filename)
// importer 속성을 위한 DataImporter 인스턴스가 이제 막 생성 되었습니다.
// "data.txt" 를 인쇄합니다.






//: [Next](@next)
