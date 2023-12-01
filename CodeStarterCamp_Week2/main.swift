//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/12/01.
//

import Foundation

//MARK: - [STEP3] 로또 당첨 번호를 회차별로 저장하고, 확인하자.
var storeLotteryNumbers: [String: [Int]] = [:]
var currentRound: Int = 0

//MARK: STEP2 에서 만들었던 로또 당첨번호 생성 함수
func generateLottoNumbers() -> [Int] {
    
    var winningLotteryNums = Set<Int>()
    
    while winningLotteryNums.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        winningLotteryNums.insert(randomNumber)
    }
    let sortedWinningNums: [Int] = Array(winningLotteryNums.sorted())
    
    return sortedWinningNums
}


//MARK: Dictionary 타입 storeLotteryNumbers에 저장하는 saveLotteryNumbers
func saveLotteryNumbers() {
    currentRound += 1
    let lotteryNumbers = generateLottoNumbers()
    
    storeLotteryNumbers["\(currentRound)회차"] = lotteryNumbers
}

//MARK: 예시) 1~7회차까지 로또 당첨번호 생성기에서 회차, 로또번호 저장
for _ in 1...7 {
    saveLotteryNumbers()
                   
    if let round = storeLotteryNumbers.keys.sorted().last.flatMap({ storeLotteryNumbers[$0] }) {
        let lastRoundNumber = storeLotteryNumbers.count
        
        let formattedNumbers = round.map({ String($0) }).joined(separator: ", ")
        print("\(lastRoundNumber)회차의 로또 당첨 번호는 \(formattedNumbers) 입니다.")
    }
}

