//
//  lottoMachine.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지은 on 2/17/24.
//

var roundNumber: Int = 0
var lottoResults = [Int: Set<Int>]()

func makeLottoNumbers() -> Set<Int> {
    
    var winningNumbers: Set<Int> = Set<Int>()
    
    while winningNumbers.count != 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    
    roundNumber += 1
    lottoResults[roundNumber] = winningNumbers
    
    return winningNumbers
}
