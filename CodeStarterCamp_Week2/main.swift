//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = []
var randomNumber: Int?
var myLottoNumbers: [Int] = []
var matchedNumbers: String = ""
var result: String = ""
var lottoHistory: Dictionary<String, Set<Int>> = [:]
var lottoHistoryCount: Int = 0


func pickRandomNumber() {
    randomNumber = Int.random(in: 1...45)
}

func saveWinningHistory(round: Int, numbers: Set<Int>) {
    lottoHistory["\(round)회차"] = numbers
}

func removeLastCommaInString(_ phrase: String) -> String {
    guard let indexOfLastComma = phrase.lastIndex(of: ",") else { return phrase }
    let removedLastCommaPhrase = phrase[..<indexOfLastComma]
    return String(removedLastCommaPhrase)
}

func pickLottoNumbers() -> Set<Int> {
    
    while lottoNumbers.count < 6 {
        pickRandomNumber()
        if let lottoNumber = randomNumber {
            lottoNumbers.insert(lottoNumber)
        } else {
            print("wrong input")
            break
        }
    }
    lottoHistoryCount += 1
    saveWinningHistory(round: lottoHistoryCount, numbers: lottoNumbers)
    return lottoNumbers
}

func compareLottoNumbers(_ lottoNumbers: Set<Int>, _ myLottoNumbers: [Int]) -> String {
    
    if myLottoNumbers.count < 1 {
        result = "로또 번호를 입력하지 않았습니다."
        return result
    } else {
        for i in 0...myLottoNumbers.count - 1 {
            if lottoNumbers.contains(myLottoNumbers[i]) {
                matchedNumbers += "\(myLottoNumbers[i]), "
            } else {
                continue
            }
        }
        let removeCommaNumbers = removeLastCommaInString(matchedNumbers)
        if matchedNumbers.count > 0 {
            result = "축하합니다! 겹치는 번호는 \(removeCommaNumbers) 입니다!"
        } else {
            result = "아쉽지만 겹치는 번호가 없습니다."
        }
        return result
    }
}

func tryLotto(_ myLottoNumbers: [Int]) {
    print(compareLottoNumbers(pickLottoNumbers(), myLottoNumbers))
}

func readWinningHistory(round: Int) {
    var stringLottoHistory = ""
    
    if let someLottoHistory = lottoHistory["\(round)회차"] {
        for number in someLottoHistory {
            stringLottoHistory += "\(number), "
        }
        let removedLastCommaHistory = removeLastCommaInString(stringLottoHistory)
        print("\(round)회차의 로또 당첨 번호는 \(removedLastCommaHistory) 입니다.")
    }
}

tryLotto([1, 2, 3, 4, 5, 6])
readWinningHistory(round: 1)









