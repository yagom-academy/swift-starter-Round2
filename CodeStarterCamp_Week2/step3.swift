//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by smfc on 1/7/2022.
//

import Foundation

var lottoHistory: Dictionary<String, Array<Int>> = [:]
var lottoRound: Int = 1

func addWinningNumbers(from generatedLottoNumbers: Set<Int>) {
    lottoHistory["\(lottoRound)회차"] = Array(generatedLottoNumbers)
    lottoRound += 1
}

func searchLottoHistory(ofRound round: Int) -> Array<Int>? {
    guard let roundNumbers = lottoHistory["\(round)회차"] else {
        return nil
    }
    return Array(roundNumbers.sorted())
}

func printLottoHistory(ofRound round: Int) {
    guard let searchResult = searchLottoHistory(ofRound: round) else {
        print("\(round)회차의 로또 당첨번호가 존재하지 않습니다!")
        return
    }
    print("\(round)회차의 로또 당첨 번호는 ", terminator: "")
    for lottoNumber in searchResult {
        if lottoNumber == searchResult.last {
            print(lottoNumber, terminator: " 입니다.\n")
        }
        else {
            print(lottoNumber, terminator: ", ")
        }
    }
}

func createLottoNumbers(gameRound round: Int) {
    for _ in 1...round {
        addWinningNumbers(from: generateLottoNumber())
    }
}
