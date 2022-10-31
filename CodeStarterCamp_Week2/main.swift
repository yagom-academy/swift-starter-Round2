//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// 프로퍼티 선언부
var randomNumber1to45: Set<Int> = Set<Int>()
var selectedSixNumbers: Array<Int> = Array<Int>()
var overlapedNumbers: Array<Int> = Array<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

/// 랜덤 로또 번호 6개를 추출하는 함수
/// 집합 컬렉션에 랜덤한 순서의 번호 1~45 형성
/// 랜덤한 6개의 숫자를 추출
func choiceLottoNumbers() {
    
    for i in 1...45 {
        randomNumber1to45.insert(i)
    }
    
    for i in 0..<6 {
        selectedSixNumbers.append(randomNumber1to45.popFirst()!)
        randomNumber1to45.remove(selectedSixNumbers[i])
    }
}

/// 겹치는 번호를 확인하고 결과를 출력하는 함수
func checkOverlapedNumbers() {

    for i in 0..<6 {
        if selectedSixNumbers.contains(myLottoNumbers[i]) {
            overlapedNumbers.append(myLottoNumbers[i])
        }
    }
    
    if overlapedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for i in 0..<overlapedNumbers.count {
            if i == overlapedNumbers.count - 1 {
                print("\(overlapedNumbers[i])", terminator: " ")
            } else {
                print("\(overlapedNumbers[i])", terminator: ", ")
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
