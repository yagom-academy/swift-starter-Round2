//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// 프로퍼티 선언부
var selectedSixNumbers = [Int]()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

/// 랜덤 로또 번호 6개를 추출하는 함수
/// 집합 컬렉션에 랜덤한 순서의 번호 1~45 형성
/// 랜덤한 6개의 숫자를 추출
func choiceLottoNumbers() {
    /// ⭐️ 해당 프로퍼티는 함수 내부에서만 사용되어 재선언
    var randomNumber1to45 = Set<Int>()
    
    /// ⭐️ i 를 number로 이름을 바꾸어서 이름을 보다 명확하게 고쳐줌
    for number in 1...45 {
        randomNumber1to45.insert(number)
    }
    
    /// ⭐️ popFirst() 메서드 자체에 remove 기능이 포함되어 있어서 .remove() 삭제함
    /// ⭐️ Nil이 들어올 경우는 없지만 보다 안전하게 Nil값이 들어올 경우 0을 넣어준다. 0은 번호에 포함되지 않아서 늘 당첨되지 않는 수로 생각할 수 있다.
    for _ in 0..<6 {
        selectedSixNumbers.append(randomNumber1to45.popFirst() ?? 0)
    }
}

/// 겹치는 번호를 확인하고 결과를 출력하는 함수
func checkOverlapedNumbers() {
    /// ⭐️ 해당 프로퍼티는 함수 내부에서만 사용되어 재선언
    var overlapedNumbers = Array<Int>()
    
    /// ⭐️ for문 i를 index로 수정
    for index in 0..<6 {
        if selectedSixNumbers.contains(myLottoNumbers[index]) {
            overlapedNumbers.append(myLottoNumbers[index])
        }
    }
    
    if overlapedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for index in 0..<overlapedNumbers.count {
            if index == overlapedNumbers.count - 1 {
                print("\(overlapedNumbers[index])", terminator: " ")
            } else {
                print("\(overlapedNumbers[index])", terminator: ", ")
            }
        }
        print("입니다.")
    }
}

/// 랜덤 로또 번호 6개를 만들어줌
choiceLottoNumbers()

/// 생성값 확인 파트
print("로또 번호는 \(selectedSixNumbers)입니다.")
print("선택한 번호는 \(myLottoNumbers)입니다.")
checkOverlapedNumbers()
