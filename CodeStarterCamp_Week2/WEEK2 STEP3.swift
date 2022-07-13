//
//  WEEK2 STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by oh namjun on 2022/07/12.
//

import Foundation

var lottoNumbersList: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func createLottoNumbers() {
    var lottoNumbers: Set<Int> = Set<Int>()

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    saveLottoNumbers(lottoNumbers: lottoNumbers)
}

func saveLottoNumbers(lottoNumbers: Set<Int>) {
    lottoNumbersList["\(lottoNumbersList.count+1)회차"] = lottoNumbers
}

func addLottoNumbers(count: Int) {
    for _ in 1...count {
        createLottoNumbers()
    }
}

func printLottoNumbers(round: String) -> String{
    if let lottoNumbersList = lottoNumbersList[round] {
        return "\(round)의 로또 당첨 번호는 \("\(lottoNumbersList)".trimmingCharacters(in: ["[","]"]))입니다."
    } else {
        return "로또번호가 생성되지 않았습니다."
    }
}

func createLotto(count: Int, round: String) -> String{
    addLottoNumbers(count: count)
    
    return printLottoNumbers(round: round)
}
