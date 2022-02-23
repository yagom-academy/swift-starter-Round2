//
//  step 3_storeLottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2022/02/23.
//

import Foundation

var numbersByRounds : [Int: Array<String>] = [:]
var round = 1


func storeWinningNumbersByRounds(roundNumber: Int, winningNumbers: Set<Int>) {
    numbersByRounds.updateValue(convertingIntSetToStringArray(winningNumbers), forKey: round)
    round = round + 1
}


func printWinningNumbersByRounds(roundNumber: Int) {
    if let numbersForThisRound = numbersByRounds[roundNumber] {
        print("\(roundNumber)회차의 로또 당첨 번호는 \(numbersForThisRound.joined(separator: ", ")) 입니다.")
    }
}


func convertingIntSetToStringArray(_ intSet: Set<Int>) -> Array<String> {
    let intArray = Array(intSet).sorted()
    var stringArray: Array<String> = []
    for index in 0...intArray.count - 1 {
        stringArray.append("\(intArray[index])")
    }
    return stringArray
}
