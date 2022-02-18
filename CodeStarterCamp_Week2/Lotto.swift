//
//  Lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by Kay Ahn on 2022/02/17.
//

import Swift

var lottoNumbersByWeek: Dictionary<Int, Set<Int>> = Dictionary<Int, Set<Int>>()

func generateRandomNumber() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

func setLottoBook() {
    for count in 0...4 {
        lottoNumbersByWeek[count] = generateRandomNumber()
    }
}

func checkWinningNumbers(week: Int) {
    var resultNumber: String = ""
    guard let winningNumber = lottoNumbersByWeek[week-1] else { return }
    for element in winningNumber {
        resultNumber += "\(element), "
    }
    let range = resultNumber.index(resultNumber.endIndex, offsetBy: -2)..<resultNumber.endIndex
    resultNumber.removeSubrange(range)
    print("\(week)회차의 로또 당첨 번호는 \(resultNumber) 입니다.")
}
