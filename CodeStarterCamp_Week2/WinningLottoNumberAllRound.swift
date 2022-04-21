//
//  WinningLottoNumberAllRound.swift
//  CodeStarterCamp_Week2
//
//  Created by 황지웅 on 2022/04/21.
//

import Foundation

func getWinningLottoNumberAllRound() -> [String: [Int]] {
    let lottoRound = 1...5
    let roundMessage = "회차"
    
    var winningNumberAllRound: [String: [Int]] = [:]
    
    for round in lottoRound {
        let NthRoundMessage = "\(round)" + roundMessage
        winningNumberAllRound[NthRoundMessage] = generateLotto()
    }
    
    return winningNumberAllRound
}

func extractNRoundLottoNumbers(round: Int) -> [Int] {
    let roundMessage = "\(round)회차"
    let winningNumberAllRound = getWinningLottoNumberAllRound()
    
    guard let lottoNumbers = winningNumberAllRound[roundMessage] else {
        return []
    }
    
    return lottoNumbers
}
