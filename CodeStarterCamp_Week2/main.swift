//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var savedLottoRounds: [Int: [Int]] = [:]
var round = 1


func changeToText(from numbers: [Int]) -> String {
    var text = numbers.description
    text.removeFirst()
    text.removeLast()
    
    return text
}


func drawLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6  {
        lottoNumbers.insert(Int.random(in: 1 ... 45))
    }

    return lottoNumbers
}


func createLottoRound(increasingRound: Int) {
    
    for count in round ..< round + increasingRound {
        savedLottoRounds[count] = drawLottoNumbers().sorted()
        round += 1
    }
    
}


func compareLottoNumbers(with myLottoNumbers: [Int], roundNumber: Int) {
    var intersectionLottoNumbers = Set<Int>()
    
    guard let wantedLottoRound = savedLottoRounds[round] else {
        print("잘못된 회차입니다.")
        return
    }

    intersectionLottoNumbers = Set(wantedLottoRound).intersection(Set(myLottoNumbers))
    
    if !intersectionLottoNumbers.isEmpty {
        let winningNumbers = changeToText(from: intersectionLottoNumbers.sorted())
        
        print("축하합니다! 겹치는 번호는 \(winningNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}


func callLottoNumbers(in roundNumber: Int) {
    guard let lottoNumbers = savedLottoRounds[roundNumber] else {
        print("잘못된 회차를 입력했습니다")
        return
    }
    
    let textLottoNumbers = changeToText(from: lottoNumbers)

    
    print("\(roundNumber)회차의 로또 당첨 번호는 \(textLottoNumbers) 입니다.")
}


createLottoRound(increasingRound: 5)
//callLottoRound(in: 6)
createLottoRound(increasingRound: 5)
compareLottoNumbers(with: [1, 4, 5, 13, 33, 43], roundNumber: 9)
//callLottoRound(in: 6)
