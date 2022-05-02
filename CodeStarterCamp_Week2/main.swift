//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

var newLottoNumbers = Set<Int>()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]
var lottoRound: Int = 0
var lottoRoundAndWinNumbers = [String: [Int]]()

func makeNewLottoNumber() {
    while newLottoNumbers.count != 6 {
        let randomNumbers = Int.random(in: 1...45)
            newLottoNumbers.insert(randomNumbers)
    }
}

func matchingLottoNumber() {
    makeNewLottoNumber()
    let matchedLottoNumbers = newLottoNumbers.intersection(myLottoNumbers)
    
    if matchedLottoNumbers.count > 0 {
        let winLottoNumbers = Array(matchedLottoNumbers)
        let convertIntToString = winLottoNumbers.map { String($0) }
        let printWinNumbers = convertIntToString.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(printWinNumbers)입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func makeLottoInformation(roundOfLotto: Int) {
    if roundOfLotto > 0 {
        for lottoRound in 1...roundOfLotto {
            makeNewLottoNumber()
            let newLottoNumberToArray = Array(newLottoNumbers)
            lottoRoundAndWinNumbers["\(lottoRound)회차"] = Array(newLottoNumberToArray)
            newLottoNumbers.removeAll()
        }
    }
    print(lottoRoundAndWinNumbers)
}

func checkRoundAndWinLottoNumbers(checkround: Int) {
    makeLottoInformation(roundOfLotto: 5)
    if let checkRoundsNumbers = lottoRoundAndWinNumbers["\(checkround)회차"] {
        let convertRound2NumbersToArray = Array(checkRoundsNumbers)
        let convertRound2IntToString = convertRound2NumbersToArray.map { String($0) }
        let printedRound = convertRound2IntToString.joined(separator: ", ")
        print("\(checkround)회차의 로또 당첨 번호는 \(printedRound) 입니다.")
    }
}

checkRoundAndWinLottoNumbers(checkround: 3)
