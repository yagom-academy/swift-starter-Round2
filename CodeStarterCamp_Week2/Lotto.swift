//
//  Lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by hyogang on 2021/12/25.
//

import Foundation


let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var historyOfWinningLottoNumbers: Dictionary = [String:[Int]]()
var round: Int = 0

func saveWinningLottoNumbers(winningLottoNumbers: [Int]) {
    round += 1
    historyOfWinningLottoNumbers["\(round)회차"] = winningLottoNumbers
}

func makeHistoryOfWinningLottoNumbers(count: Int) {
    for _ in 1...count {
        let _ = makeWinningLottoNumbers()
    }
}

func showHistoryOfWinningLottoNumbers(targetRound: Int) {
    guard let winningLottoNumbers = historyOfWinningLottoNumbers["\(targetRound)회차"] else { return }
    let targetRoundWinningNumbers = convertArrayToString(array: winningLottoNumbers)
    print("\(targetRound)회차의 로또 당첨 번호는 \(targetRoundWinningNumbers) 입니다.")
}

func makeWinningLottoNumbers() -> [Int] {
    var winningLottoNumbers = Set<Int>()
    
    while winningLottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        winningLottoNumbers.insert(lottoNumber)
    }
    let arrayWinningNumbers = Array(winningLottoNumbers)
    saveWinningLottoNumbers(winningLottoNumbers: arrayWinningNumbers)
    
    return arrayWinningNumbers
}

func compareMylottoNumbersWithWinningLottoNumbers() -> [Int] {
    let winningLottoNumbers = makeWinningLottoNumbers()

    let matchNumbers = winningLottoNumbers.filter { Array(myLottoNumbers).contains($0) }
    return matchNumbers
}

func convertArrayToString(array:[Int]) -> String {
    let stringArray = array.sorted().map { String($0) }.joined(separator: ", ")
    return stringArray
}

func confirmMyLottoResult() {
    let matchNumbers = compareMylottoNumbersWithWinningLottoNumbers()
    if matchNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let result = convertArrayToString(array: matchNumbers)
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    }
}
