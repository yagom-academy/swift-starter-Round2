//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let random = Int.random(in: 1...45)
        lottoNumbers.insert(random)
    }
    return lottoNumbers
}

func checkLottoNumbers(lottoNumbers: Set<Int> = makeLottoNumbers()) -> Set<Int> {
    let myLottoNumbers = [1, 2, 3, 4, 5, 6]
    let winningLottoNumbers = lottoNumbers.intersection(myLottoNumbers)
    return winningLottoNumbers
}

func printLottoResult(winningLottoNumbers: Set<Int> = checkLottoNumbers()) {
    if winningLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        printWinnerMessage()
    }
}

func printWinnerMessage(winningLottoNumbers: Set<Int> = checkLottoNumbers()) {
    let sortedNumbers = winningLottoNumbers.sorted()
    let arrayNumbers = [Int](sortedNumbers)
    let maxCount = arrayNumbers.count - 1
    if maxCount == 0 {
        print("축하합니다! 겹치는 번호는 \(arrayNumbers[0]) 입니다!")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(arrayNumbers[0])", terminator: "")
        for count in 1...maxCount {
            print(", \(arrayNumbers[count])", terminator: "")
        }
        print(" 입니다!")
    }
}

func playLotto() {
    printLottoResult(winningLottoNumbers: checkLottoNumbers())
}

playLotto()
