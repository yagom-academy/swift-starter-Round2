//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// 프로퍼티 선언부
let myLottoNumbers = [1, 2, 3, 4, 5, 6]
var lottoHistory = [String: [Int]]()
var countHistory = 0

///로또 회차 생성 입력부
print("로또를 몇 회차까지 생성하시겠습니까? (입력 예시: 5)", terminator: " -> ")
let countRound = Int(readLine() ?? "0") ?? 0
generateLottoRound(count: countRound)
print(lottoHistory)

///로또 확인 회차 입력부
print("몇 회차의 로또 번호를 확인하시겠습니까? (입력 예시: 2)", terminator: " -> ")
let selectedRound = Int(readLine() ?? "0") ?? 0
printLottoHistory(round: selectedRound)

/// 랜덤한 6개의 로또 번호를 생성하여 반환하는 함수
func generateSixRandomNumber() -> [Int] {
    
    var selectedSixNumbers = [Int]()
    var randomNumber1to45 = [Int]()
    
    for number in 1...45 {
        randomNumber1to45.append(number)
    }
    
    randomNumber1to45.shuffle()
    
    for index in 0..<6 {
        selectedSixNumbers.append(randomNumber1to45[index])
    }
    
    return selectedSixNumbers
}

/// 로또 번호를 딕셔너리 형태로 회차별로 저장하는 함수
func saveLottoHistory(sixNumbers: [Int]) {
    
    countHistory += 1
    lottoHistory["\(countHistory)회차"] = sixNumbers
    
}

/// 원하는 회차의 로또 번호를 출력하는 함수
func printLottoHistory(round: Int) {
    
    if let unwrappedSixNumbers = lottoHistory["\(round)회차"] {
        let stringArray = unwrappedSixNumbers.map { String($0) }
        let unwrappedSixNumbersString = stringArray.joined(separator: ", ")
        print("\(round)회차의 로또 당첨번호는 \(unwrappedSixNumbersString) 입니다.")
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
        let stringArray = overlapedNumbers.map { String($0) }
        let overlapedNumbersString = stringArray.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(overlapedNumbersString) 입니다.")
    }
    
}

/// 입력 받은 회차 횟수에 따라서 로또 회차별 번호를 생성하는 함수
func generateLottoRound(count: Int) {
    
    for _ in 1...count {
        saveLottoHistory(sixNumbers: generateSixRandomNumber())
    }
    
}






