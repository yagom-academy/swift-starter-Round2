//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winningHistory: Dictionary<String, Set<Int>> = [:]
var winningHistoryCount: Int = 0


func createWinningNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = []
    while winningNumbers.count < 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    winningHistoryCount += 1
    recordWinningHistory(round: winningHistoryCount, numbers: winningNumbers)
    print("당첨 번호: \(winningNumbers)")
    return winningNumbers
}

func removeLastComma(phrase: String) -> String {
    guard let indexOfLastComma = phrase.lastIndex(of: ",") else { return phrase }
    let filteredPhrase = phrase[..<indexOfLastComma]
    return String(filteredPhrase)
}

func checkMyNumbersCount(_ myNumbers: [Int]) -> Bool {
    if myNumbers.count < 1 || myNumbers.count > 7 {
        return false
    } else {
        return true
    }
}

func insertMatchedNumber(winningNumbers: Set<Int>, myNumbers: [Int]) -> String {
    var matchedNumbers: String = ""
    
    for myNumber in myNumbers {
        if winningNumbers.contains(myNumber) {
            matchedNumbers += "\(myNumber), "
        } else {
            continue
        }
    }
    return matchedNumbers
}

func compareLottoNumbers(_ winningNumbers: Set<Int>, _ myNumbers: [Int]) -> String {
    var compareResultMessage: String = ""
    
    if checkMyNumbersCount(myNumbers) {
        let resultMatchedNumbers = insertMatchedNumber(winningNumbers: winningNumbers, myNumbers: myNumbers)
        if resultMatchedNumbers != "" {
            let matchedNumbersWithoutLastComma = removeLastComma(phrase: resultMatchedNumbers)
            compareResultMessage = "축하합니다! 겹치는 번호는 \(matchedNumbersWithoutLastComma) 입니다!"
        } else {
            compareResultMessage = "아쉽지만 겹치는 번호가 없습니다."
        }
    } else {
        compareResultMessage = "로또 번호를 입력하지 않았거나, 너무 많은 번호가 있습니다."
    }
    return compareResultMessage
}

func checkLotto(myNumbers: [Int]) {
    let winningNumbers = createWinningNumbers()
    print(compareLottoNumbers(winningNumbers, myNumbers))
}

func recordWinningHistory(round: Int, numbers: Set<Int>) {
    winningHistory["\(round)회차"] = numbers
}


func getWinningHistory(round: Int) -> String {
    var winningHistoryNumbers: String = ""
    var historyResultMessage: String = ""
    
    if let theLottoHistory = winningHistory["\(round)회차"] {
        for number in theLottoHistory {
            winningHistoryNumbers += "\(number), "
        }
        let winningHistoryWithoutLastComma = removeLastComma(phrase: winningHistoryNumbers)
        historyResultMessage = "\(round)회차의 로또 당첨 번호는 \(winningHistoryWithoutLastComma) 입니다."
    } else {
        historyResultMessage = "해당 회차가 존재하지 않습니다."
    }
    
    return historyResultMessage
}


checkLotto(myNumbers: myLottoNumbers)
checkLotto(myNumbers: myLottoNumbers)
checkLotto(myNumbers: myLottoNumbers)
checkLotto(myNumbers: myLottoNumbers)
checkLotto(myNumbers: myLottoNumbers)
print(getWinningHistory(round: 2))










