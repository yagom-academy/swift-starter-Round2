//
//  lottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by MIJU on 2022/02/23.
//

import Foundation


var lottoDictionary: [Int: Set<Int>] = [Int: Set<Int>]()
var lottoNumbers: Set<String> = Set<String>()
var roundNumber = Int()

func generateLottoNumbers() -> Set<Int> {
    var randomLottoNumbers: Set<Int> = Set<Int>()
    while randomLottoNumbers.count < 6 {
        randomLottoNumbers.insert(Int.random(in: 1...45))
    }
    return randomLottoNumbers
}

func saveRoundAndLottoNumbers(round: Int) {
    for index in 1...round {
        lottoDictionary.updateValue(generateLottoNumbers(), forKey: index)
    }
}

func findRoundAndLottoNumbers(round: Int) {
    if let lotto = lottoDictionary[round] {
        for number in lotto {
            lottoNumbers.insert(String(number))
        }
    }
    roundNumber = round
}

func printRoundAndLottoNumbers() {
    saveRoundAndLottoNumbers(round: 5)
    findRoundAndLottoNumbers(round: 2)
    
    let lottoNumbers: String = lottoNumbers.joined(separator: ", ")
    print("\(roundNumber)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
}
