//
//  Lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by 김예림 on 2023/05/30.
//

import Foundation

// MARK: - 로또 번호 생성 함수
func generateLotteryNum() -> Set<Int> {
    var randomNumSet: Set<Int> = Set()
    
    while randomNumSet.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        randomNumSet.insert(randomNumber)
    }
    
    return randomNumSet
}


// MARK: - 당첨 번호 확인 함수
func compareLotteryNum(lottoNum: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var matchNums: [Int] = []
    
    for num in lottoNum {
        if myLottoNumbers.contains(num) {
            matchNums.append(num)
            continue
        }
    }
    
    guard matchNums.isEmpty == false else { return print("아쉽지만 겹치는 번호가 없습니다.")}
    
    let matchString = matchNums.map { String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(matchString) 입니다!")
}
