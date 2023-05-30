//
//  Lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by 김예림 on 2023/05/30.
//

import Foundation

// MARK: - 로또 번호 생성 함수
func generateLotteryNum() -> Set<Int> {
    var randomNumberSet: Set<Int> = Set()
    
    while randomNumberSet.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        randomNumberSet.insert(randomNumber)
    }
    
    return randomNumberSet
}


// MARK: - 당첨 번호 확인 함수

func compareLotteryNum(lottoNum: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var matchNumbers: Set<Int> = []
    
    matchNumbers = lottoNum.intersection(myLottoNumbers)
    
    if matchNumbers.isEmpty {
        return print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
    let matchString = matchNumbers.map { String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(matchString) 입니다!")
    
}
