import UIKit

//While Loops (while 반복문)
//while 반복문은 조건이 false 가 될 때까지 ‘일련의 구문 집합’ 을 수행합니다. 이런 종류의 반복문은 첫 번째 ‘회차’ 의 시작 전에 ‘반복 횟수’ 를 알 수 없을 때 사용하는 것이 가장 좋습니다.

//whle 문은 반복문을 매 번 통과하기 시작할 때 조건을 평가합니다.
//repeat-while 문은 반복문을 매 번 통과한 끝에서 조건을 평가합니다.

//while 반복문은 단일 조건을 평가하는 것으로써 시작합니다. 조건이 true 이면, 조건이 false 가 될 때까지 ‘일련의 구문 집합’ 들이 반복됩니다.

//while condition-조건 {
//    statements-구문
//}

var num = 1
var sum = 0

while sum <= 100 {
    sum += num
}
sum


while num <= 100 {
    sum += num
    num += 1
}
sum

//Repeat-While (repeat-while 문)
//while 반복문의 다른 변형으로, repeat-while 반복문이 있는데, 반복문의 조건을 고려하기 전에 (before), ‘반복문 블럭’ 을 먼저 한 번 통과합니다. 그런 다음 조건이 false 가 될 때까지 반복문을 계속 ‘되풀이합니다 (repeat)’.
//repeat {
//statements-구문
//} while condition-조건

var num1 = 100
while num1 < 100 {
    num1 += 1
}
num1
//while 문 num이라는 변수에 100인 경우 while문이 종료됨



num1 = 100
repeat {
    num1 += 1
    
}while num1 < 100
num1
//repeat while문을 실행시키면 일단 실행시킴 num 에 100이 저장되면 종료 됨 컨디션에 관계 없이 먼저 실행하기 떄문에 값이 달라 질수 있음
//조건을 먼저 사용해야된다면 repeat while문 코드를 먼저 실행해야 된다면 일반 while문을 쓰면 된다.

