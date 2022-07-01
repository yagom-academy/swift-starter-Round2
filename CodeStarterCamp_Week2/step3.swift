//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by smfc on 1/7/2022.
//

import Foundation

var lottoHistory: Dictionary<String, Array<Int>> = [:]
var lottoRound: Int = 1
var roundToSearch:Int = 1

func addLottoNumberToHistory(from generatedLottoNumbers: Set<Int>) {
    lottoHistory["\(lottoRound)회차"] = Array(generatedLottoNumbers)
    lottoRound += 1
}

func searchLottoHistory(round roundToSearchInput: Int) -> Array<Int>? {
    roundToSearch = roundToSearchInput
    if let round = lottoHistory["\(roundToSearch)회차"] {
        return Array(round.sorted())
    }
    else {
        return nil
    }
}

func printLottoHistoryWithRound(resultSearch lottoNumbers: Array<Int>?) {
    if let resultSearch = lottoNumbers {
        print("\(roundToSearch)회차의 로또 당첨 번호는 ", terminator: "")
        for lottoNumber in resultSearch {
            if lottoNumber == resultSearch.last {
                print(lottoNumber, terminator: " 입니다.\n")
            }
            else {
                print(lottoNumber, terminator: ", ")
            }
        }
    }
    else {
        print("\(roundToSearch)회차의 로또 당첨번호가 존재하지 않습니다!")
    }
}
