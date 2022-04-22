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
    
    saveToArchive(lottoTray)
    
    return lottoTray
}

func pickRandomNumber(in endNum: Int) -> Int {
    Int.random(in: 1...endNum)
}

func saveToArchive(_ lottoTray: Set<Int>) {
    lottoArchive["\(roundOfLotto)회차"] = lottoTray.sorted()
    roundOfLotto += 1
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

func printLastLottoTray(round: Int){
    if let existTray = lottoArchive["\(round)회차"] {
        let winningNumbers = existTray.map{ String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
    }
    else {
        print("NO EXIST TRAY ROUND \(round)!")
    }
}

var roundOfLotto = 1
var lottoArchive: Dictionary<String, Array<Int>> = [:]
let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]

let winningNumbersRound1 = generateLottoNumbers()
let winningNumbersRound2 = generateLottoNumbers()
let winningNumbersRound3 = generateLottoNumbers()
let winningNumbersRound4 = generateLottoNumbers()
let winningNumbersRound5 = generateLottoNumbers()

printLastLottoTray(round: 2)
//checkMyLottoNumbers(from: myLottoNumbers, to: winningNumbers)
