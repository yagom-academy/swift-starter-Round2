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
var lottoFinalRound: Int = 0
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

func makeLottoInformation(ofRound: Int) {
    if ofRound > 0 {
        
        for lottoRound in 1...ofRound {
            makeNewLottoNumber()
            lottoFinalRound = lottoFinalRound + 1
            let newLottoNumberToArray = Array(newLottoNumbers)
            lottoRoundAndWinNumbers["\(lottoRound)회차"] = Array(newLottoNumberToArray).sorted()
            newLottoNumbers.removeAll()
        }
    }
}

func checkWinLottoNumbers(round: Int) {
    if let checkRoundsNumbers = lottoRoundAndWinNumbers["\(round)회차"] {
        let convertRoundNumbersToArray = Array(checkRoundsNumbers)
        let convertRoundIntToString = convertRoundNumbersToArray.map { String($0) }
        let printedRound = convertRoundIntToString.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(printedRound) 입니다.")
    }
    if round > lottoFinalRound {
        print("해당 회차의 정보가 없습니다.")
    }
}

makeLottoInformation(ofRound: 8)
checkWinLottoNumbers(round: 9)
