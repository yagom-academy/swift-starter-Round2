//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - 로또
// MARK: 로또 추첨기
func makeLotto() -> Set<Int> {
    var lotto: Set<Int> = []
    while lotto.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lotto.insert(lottoNumber)
    }
    return lotto
}

// MARK: 로또번호 저장
func saveLottoNumbers() -> Dictionary<String, [Int]> {
    var winNumbersHistory: [String : [Int]] = [:]
    for n in 1...5 {
        let round = "\(n)회차"
        let lotto = makeLotto()
        winNumbersHistory[round] = lotto.sorted()
    }
    return winNumbersHistory
}

// MARK: 로또번호 출력함수
func printWinNumbers(array: [Int]) {
    for number in array {
        if number != array[array.count - 1] {
            print(number, terminator: ", ")
        }else {
            print(number, terminator: " ")
        }
    }
}

// MARK: 회차로 로또 당첨번호 찾기
func searchWinNumber(round: Int) {
    let winNumbersHistory: Dictionary<String, [Int]> = saveLottoNumbers()
    let round = "\(round)회차"
    
    for item in winNumbersHistory {
        print(item)
    }
    
    if let search = winNumbersHistory[round] {
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        printWinNumbers(array: search)
        print("입니다")
    } else {
        print("\(round)회차가 진행되지 않았거나 저장된 당첨 번호가 없습니다")
    }
}


// MARK: 출력
saveLottoNumbers()
searchWinNumber(round: 3)
