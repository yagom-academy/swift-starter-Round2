//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/12/01.
//

import Foundation

//MARK: - [STEP3] 로또 당첨 번호를 회차별로 저장하고, 확인하자.
let storedLottoNums: [String: [Int]] = saveLotteryNumbers()


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
func saveLotteryNumbers() -> [String: [Int]] {
    var perRoundLottery: [String: [Int]] = [:]
    for perRound in 1...5 {
        let lotteryNumber = generateLottoNumbers()
        perRoundLottery["\(perRound)회차"] = lotteryNumber
    }
    return perRoundLottery
}

//MARK: 1~5회차까지 로또번호 출력하는 함수 생성
func printLottoNumbers() {
    let sortedRoundLottery = storedLottoNums.sorted { $0.key.localizedStandardCompare($1.key) == .orderedAscending }
    for (round, lottery) in sortedRoundLottery {
        let commaSeparatedNumbers = lottery.map { String($0) }.joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(commaSeparatedNumbers) 입니다.")
    }
}

printLottoNumbers()

