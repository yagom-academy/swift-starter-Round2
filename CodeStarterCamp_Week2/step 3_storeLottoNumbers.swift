//
//  step 3_storeLottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2022/02/23.
//

import Foundation

var numbersByRounds : [Int: Set<Int>] = [:]
var round = 0

func storeWinningNumbersByRounds(roundNumber: Int, winningNumbers: Set<Int>) {
    round = round + 1
    numbersByRounds.updateValue(winningNumbers, forKey: round)
}
    
func printWinningNumbersByRounds(roundNumber: Int) {
    
    guard let a = numbersByRounds[roundNumber] else {
        printUnvalidRoundMessage(inputRound: roundNumber)
        return
    }
    
    print("\(roundNumber)회차의 로또 당첨 번호는 \(convertingNumbersForPrint(a)) 입니다.")
}

func convertingNumbersForPrint(_ intSet: Set<Int>) -> String {
    let sortedNumbers = Array(intSet).sorted()
    var numbersToJoin: Array<String> = []
    
    for index in 0...sortedNumbers.count - 1 {
        numbersToJoin.append("\(sortedNumbers[index])")
    }
    
    let numbersForPrint = numbersToJoin.joined(separator: ", ")
    return numbersForPrint
}

func printUnvalidRoundMessage(inputRound: Int) {
    let message = """
    
        -----------------<오류>-------------------
             입력하신 \(inputRound)회는 아직 추첨되지 않았습니다.
             마지막으로 추첨 완료된 회차는 \(round)회 입니다.
             추첨 완료된 회차를 입력해주시기 바랍니다.
        -----------------------------------------
    
    """
    print(message)
}
