//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoTray = Set<Int>()

    repeat {
        lottoTray.insert(pickRandomNumber(in: 45))
    } while lottoTray.count < 6

    return lottoTray
}

func pickRandomNumber(in endNum: Int) -> Int {
    Int.random(in: 1...endNum)
}

func checkMyLottoNumbers(from myNumbers: Array<Int>, to winNumbers: Set<Int>) {
    let hittedNumbers = getIntersection(of: myNumbers, and: winNumbers)
    printWinningComent(array: hittedNumbers)
}

func getIntersection(of myNumbers: Array<Int>, and winNumbers: Set<Int>) -> Array<String> {
    winNumbers.intersection(myNumbers).map { String($0) }.sorted()
}

func printWinningComent(array hittedNumbers: Array<String>) {
    if hittedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        let hittedNumsStr = hittedNumbers.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(hittedNumsStr) 입니다!")
    }
}

let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]
let winningNumbers = generateLottoNumbers()

checkMyLottoNumbers(from: myLottoNumbers, to: winningNumbers)
