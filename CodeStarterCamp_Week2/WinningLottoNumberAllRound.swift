//
//  WinningLottoNumberAllRound.swift
//  CodeStarterCamp_Week2
//
//  Created by 황지웅 on 2022/04/21.
//

import Foundation

func getAllRoundLottoNumbers() -> [String: [Int]] {
    let lottoRound = 1...5
    
    var winningNumberAllRound: [String: [Int]] = [:]
    
    for round in lottoRound {
        let roundMessage = "\(round)회차"
        winningNumberAllRound[roundMessage] = generateLottoNumbers()
    }
    
    return winningNumberAllRound
}

func extractNRoundLottoNumbers(round: Int) -> [Int] {
    let roundMessage = "\(round)회차"
    let winningNumberAllRound = getAllRoundLottoNumbers()
    
    guard let lottoNumbers = winningNumberAllRound[roundMessage] else {
        return []
    }
    
    return lottoNumbers
}

func printNRoundLottoNumber(round: Int) {
    let roundLottoNumber = extractNRoundLottoNumbers(round: round).map{ number in
                                String(number)
                        }.joined(separator: ", ")
    
    print("\(round)회차의 로또 당첨 번호는 " + roundLottoNumber + " 입니다.")
}

