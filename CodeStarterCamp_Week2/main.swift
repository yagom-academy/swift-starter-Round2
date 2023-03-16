//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]
var roundLottoInfo: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func createWinningLottoNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

func printLottoInformation(round: Int) {
    for numbers in 1...5 {
        roundLottoInfo["\(numbers)회차"] = createWinningLottoNumbers()
    }
    
    if let lottoRound = roundLottoInfo["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        for lottoNumbersSort in 0...4 {
            print(lottoRound.sorted()[lottoNumbersSort], terminator: ", ")
        }
        print("\(lottoRound.sorted()[5]) 입니다.")
    }
    else {
        print("\(round)회차는 아직 진행하지 않은 회차입니다.")
    }
}

func checkOverlapNumbers(with myLottoNumbers: Array<Int>) {
    let winningLottoNumbers: Set<Int> = createWinningLottoNumbers()
    let overlapNumbers: Set<Int> = winningLottoNumbers.intersection(myLottoNumbers)
    if overlapNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(overlapNumbers)입니다!")
    }
}

printLottoInformation(round: 3)
