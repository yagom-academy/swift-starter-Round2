//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoRound: [Int: [Int]] = [:]


var savedLottoRounds: [Int: [Int]] = [:]
var round = 1


func changeToStr(customStr: [Int]) -> String {
    var str = customStr.description
    str.removeFirst()
    str.removeLast()
    
    return str
}


func drawLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6  {
        lottoNumbers.insert(Int.random(in: 1 ... 45))
    }

    return lottoNumbers
}


func makeLottoRound(increasingRound: Int) {
    
    for count in round ..< round + increasingRound {
        savedLottoRounds[count] = drawLottoNumbers().sorted()
        round += 1
    }
    
}


func compareLottoNumbers(writingLottoNumber myLottoNumbers: [Int]) {
    let lottoNumber: Set<Int> = drawLottoNumbers()
    
    let intersectionLottoNumbers = lottoNumber.intersection(Set(myLottoNumbers))
    
    if !intersectionLottoNumbers.isEmpty {
        let winningNumbers = changeToStr(customStr: intersectionLottoNumbers.sorted())
        
        print("축하합니다! 겹치는 번호는 \(winningNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}


func callLottoRound(wantedRound roundNumber: Int) {
    guard let lottoNumbers = savedLottoRounds[roundNumber] else {
        print("잘못된 회차를 입력했습니다")
        return
    }
    
    let lottoNumbers2 = changeToStr(customStr: lottoNumbers)

    
    print("\(roundNumber)회차의 로또 당첨 번호는 \(lottoNumbers2) 입니다.")
}


makeLottoRound(increasingRound: 5)
callLottoRound(wantedRound: 6)
makeLottoRound(increasingRound: 5)
callLottoRound(wantedRound: 6)
