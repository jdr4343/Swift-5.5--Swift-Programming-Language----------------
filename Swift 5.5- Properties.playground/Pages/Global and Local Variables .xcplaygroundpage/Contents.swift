//: [Previous](@previous)

import Foundation

//Global and Local Variables (전역 변수와 지역 변수)

//위에서 설명한 속성을 계산하고 관찰하는 ‘보유 능력 (capabilities)’ 은 전역 변수 (global variables) 와 지역 변수 (local variables) 에서도 사용 가능합니다. ‘전역 변수’ 는 어떤 함수, 메소드, 클로저, 또는 타입인 상황 외부에서 정의된 변수입니다. ‘지역 변수’ 는 함수, 메소드, 또는 클로저인 상황 내에서 정의된 변수입니다.

//이전 장에서 마주쳤던 모든 전역 변수와 지역 변수는 저장 변수 (stored variables) 였습니다. ‘저장 변수’ 는, ‘저장 속성’ 같이, 정해진 타입의 값에 대해 저장 공간을 제공하며 해당 값을 설정하고 가져오는 것을 허용합니다.

//하지만, 전역에서든 지역에서든, 계산 변수 (computed variables) 를 정의할 수도 저장 변수에 대한 ‘관찰자 (observers)’ 를 정의할 수도 있습니다. ‘계산 변수’ 는, 저장하는 대신, 값을 직접 계산하며 ‘계산 속성’ 과 똑같은 방식으로 작성합니다.

//전역 상수와 전역 변수는, Lazy Stored Properties (느긋한 저장 속성) 과 비슷한 관례대로, 항상 ‘느긋하게 (lazily)’ 계산합니다. ‘느긋한 저장 속성’ 과는 달리, 전역 상수와 전역 변수는 lazy 수정자로 표시할 필요가 없습니다.

//지역 상수와 지역 변수는 절대로 ‘느긋하게’ 계산하지 않습니다.



// #1 GloverScope 어떤 브레이스{}에도 포합되있지 않음
//동일한 범위에 있는 변수와 상수에 접근할수 있다. 동일한 범위에서는 이전에 선언되있는 변수에 접근 할수 있다.
//
let g1 = 123
// 상위 스코프에선 하위스코프에 선언되 있는 상수와 변수에 접근 할수 없다
//print(g2)    아래 선언한다고 해서 실행되지 않음
func doSomething() {
   // #3 LocalScope  브레이스에 포함됨
    //로컬 스코프에서는 상위 스코프나 글로벌 스코프에 선언된 상수나 변수에 접근할수 있다
    let local1 = 123
    print(g1)
    print(g2)
   if true {
      // #4
    print(local1)
  //  print(local2) 컴파일 오류 로컬2를 선언하기전에 접근했기 때문
    
   }//브레이스는 코드의 범위를 설정할뿐만 아니라 라이프사이클또한 지정함
   
   // #5
    let local2 = 3123
    
}


// #2
let g2 = 12313
struct Scope {
   // #6
   // print(g1)
   // print(g2)
   //Declaration Scope 선언범위 여기에선 표현식이나 문장을 직접 작성 할수 없음 속성과 메소드 같은 멤버 선언이 와야됨
   func doSomething() {
    print(g1)
    print(g2)
      // #7
   }
}

doSomething()
//: [Next](@next)
