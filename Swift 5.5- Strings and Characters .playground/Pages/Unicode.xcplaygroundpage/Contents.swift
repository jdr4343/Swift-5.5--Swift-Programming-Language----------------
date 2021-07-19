//: [Previous](@previous)

import Foundation
//Unicode (유니코드)

//유니코드 (Unicode) 는 서로 다른 ‘문자 체계 (writing system)’ 에서 문장을 ‘부호화 (encoding)’ 하고, 표현하며, 가공하기 위한 국제 표준입니다.
//이는 어떤 언어에 대해서든 거의 대부분의 문자를 표준화된 형식으로 표현하고, ‘텍스트 파일’ 이나 웹 페이지 같은 외부 소스에서 해당 문자를 읽고 쓸 수 있도록 해줍니다.

//Unicode Scalar Values (유니코드 크기 값)
//스위프트 그 자체의 String 타입은 유니코드 크기 값 (Unicode scalar values) 으로 제작되어 있습니다.
//‘유니코드 크기 값’ 은 하나의 문자 또는 ‘수정자 (modifier)’ 에 대한 ‘유일한 21-비트 수’ 로, 가령 U+0061 은 LATIN SMALL LETTER A ("a") 에, U+1F425 는 FRONT-FACING BABY CHICK ("🐥") 에 대한 것입니다.

//Extended Grapheme Clusters (확장된 자소 덩어리)
//스위프트의 모든 Character 타입 인스턴스는 단 하나의 ‘확장된 자소 덩어리 (extended grapheme cluster)’ 를 표현합니다.18 ‘확장된 자소 덩어리’ 는 하나 이상의 유니코드 크기 값이 나열된 것으로 (조합하면) 사람이-이해할 수 있는 단일한 문자를 만들어 냅니다.

//예를 들어 보겠습니다. ‘문자 (letter)’ é 는 단일 유니코드 크기 값 é  로 표현할 수 있습니다. 하지만, 똑같은 문자를 한 쌍 (pair) 의 ‘크기 값’-표준 문자 e 와,
//그 뒤의 COMBINING ACUTE ACCENT 크기 값 (U+0301)-으로 표현할 수도 있습니다. COMBINING ACUTE ACCENT 크기 값은, ‘유니코드를-인식하는 글자-그리기 시스템’ 이 이를 그릴 때 e 를 é 로 바꾸도록, 자기 앞의 크기 값에 시각적으로 적용됩니다.

//두 경우 모두, 문자 é 는 하나의 ‘확장된 자소 덩어리’ 를 표현하는 ‘단일 스위프트 Character 값’ 으로 표현됩니다. 첫 번째 경우엔, ‘덩어리 (cluster)’ 가 단일 크기 값을 담고 있으며; 두 번째 경우, 이는 두 크기 값의 ‘덩어리’ 입니다:

let eAcute: Character = "\u{E9}"                // é
let combinedEAcute: Character = "\u{65}\u{301}" // e 와 그 뒤의
// eAcute 는 é 이고, combinedEAcute 도 é 입니다.
//‘확장된 자소 덩어리’ 는 ‘쓰는 방법이 많고 복잡한 문자 (many complex script characters)’ 를 단일 Character 값으로 표현하는 유연한 방법입니다. 예를 들어, ‘한글’ 에서 ‘한국어 음절’ 은 ‘완성형 (precomposed)’ 또는 ‘조합형 (decomposed)’ 어느 것으로도 표현할 수 있습니다. 이 두 표현법 모두 스위프트에서 ‘단일 Character 값’ 으로 인정합니다:

let precomposed: Character = "\u{D55C}"                 // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"  // ᄒ, ᅡ, ᆫ
// precomposed 는 '한' 이고, decomposed 도 '한' 입니다.
//‘확장된 자소 덩어리’ 는 (COMBINING ENCLOSING CIRCLE 및, U+20DD 같은) 테두리 표시를 위한 크기 값으로 다른 유니코드 크기 값에 테두리를 쳐서 단일 Character 값을 만들게 해줍니다.

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute 은 é⃝ 입니다.
//‘지역 지시 기호 (regional indicator symbols)’ 에 대한 유니코드 크기 값은 서로 쌍으로 조합하여 단일 Character 값을 만들 수 있는데, 가령 REGIONAL INDICATOR SYMBOL LETTER U (U+1F1FA) 와 REGIONAL INDICATOR SYMBOL LETTER S (U+1F1F8) 의 조합은 다음과 같습니다:

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS 은 🇺🇸 입니다.
//: [Next](@next)
