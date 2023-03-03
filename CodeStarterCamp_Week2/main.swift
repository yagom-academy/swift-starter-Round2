//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoRound: [Int: [Int]] = [:]


func drawLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6  {
        lottoNumbers.insert(Int.random(in: 1 ... 45))
    }

    return lottoNumbers
}

func makeLottoRound(lottoNumbers: Set<Int>, round: Int) {
    
    let lottoNumbers = lottoNumbers.sorted()
    
    for count in 1 ... round {
        lottoRound[count] = lottoNumbers
    }
    
}


func compareLottoNumbers(myLottoNumbers: [Int]) {
    let lottoNumber: Set<Int> = drawLottoNumbers()
    
    let intersectionLottoNumbers = lottoNumber.intersection(Set(myLottoNumbers))
    
    if !intersectionLottoNumbers.isEmpty {
        var winningNumbers = intersectionLottoNumbers.sorted().description
        
        winningNumbers.removeFirst()
        winningNumbers.removeLast()
        
        print("축하합니다! 겹치는 번호는 \(winningNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}

func printLotto(roundNumber: Int) {
    guard let lottoNumbers = lottoRound[roundNumber] else {
        print("잘못된 회차를 입력했습니다")
        return
    }
    
    var winningNumbers = lottoNumbers.description
    winningNumbers.removeFirst()
    winningNumbers.removeLast()
    
    print("\(roundNumber)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
}



makeLottoRound(lottoNumbers: drawLottoNumbers(), round: 5)
printLotto(roundNumber: 1)
