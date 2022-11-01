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
var lottoHistory = [String: [Int]]()
var countHistory = 0

/// 랜덤 로또 번호 6개를 추출하는 함수
/// 집합 컬렉션에 랜덤한 순서의 번호 1~45 형성
/// 랜덤한 6개의 숫자를 추출
func choiceLottoNumbers() {

    var randomNumber1to45 = [Int]()
    
    for number in 1...45 {
        randomNumber1to45.append(number)
    }

    randomNumber1to45.shuffle()
    
    for index in 0..<6 {
        selectedSixNumbers.append(randomNumber1to45[index])
    }
    
    countHistory += 1
    lottoHistory["\(countHistory)회차"] = selectedSixNumbers
    selectedSixNumbers.removeAll()
    
    if let unwrappedSixNumbers = lottoHistory["\(countHistory)회차"] {
        print("\(countHistory)회차의 로또 당첨번호는", terminator: " ")
        for index in 0..<unwrappedSixNumbers.count {
            if index == unwrappedSixNumbers.count - 1 {
                print("\(unwrappedSixNumbers[index])", terminator: " ")
            } else {
                print("\(unwrappedSixNumbers[index])", terminator: ", ")
            }
        }
        print("입니다.")
    }
}

/// 겹치는 번호를 확인하고 결과를 출력하는 함수
func checkOverlapedNumbers(round: Int) {

    var overlapedNumbers = Array<Int>()
    
    if let unwrappedSixNumbers = lottoHistory["\(round)회차"] {
        for index in 0..<6 {
            if unwrappedSixNumbers.contains(myLottoNumbers[index]) {
                overlapedNumbers.append(myLottoNumbers[index])
            }
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

/// 로또 당첨 번호를 5번 생성하고 해당 회차의 찍은 값을 당첨 번호와 확인한다.
choiceLottoNumbers()
checkOverlapedNumbers(round: 1)
choiceLottoNumbers()
checkOverlapedNumbers(round: 2)
choiceLottoNumbers()
checkOverlapedNumbers(round: 3)
choiceLottoNumbers()
checkOverlapedNumbers(round: 4)
choiceLottoNumbers()
checkOverlapedNumbers(round: 5)


