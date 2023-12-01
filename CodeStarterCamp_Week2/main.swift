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

func generateLottoNumbers() -> [Int] {
    
    var winningLotteryNums = Set<Int>()
    
    while winningLotteryNums.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        winningLotteryNums.insert(randomNumber)
    }
    let sortedWinningNums: [Int] = Array(winningLotteryNums.sorted())
    
    return sortedWinningNums
}



func saveLotteryNumbers() {
    currentRound += 1
    let lotteryNumbers = generateLottoNumbers()
    
    storeLotteryNumbers["\(currentRound)회차"] = lotteryNumbers
}
/// 예시 사용자가 알고 싶은 회차 만큼 반복해준다. 하지만, 다른 방법으로 **함수 호출할때마다** 회차를 저장해서 + 1을 해줄 수 있을까?
/// 문제에서 바라는 것은 그것 같아서, 의문이긴합니다. 이렇게 고정적인 회차를 미리 정해주고 print 하는 것은 가능합니다.
for _ in 1...7 {
    saveLotteryNumbers()
                   
    if let round = storeLotteryNumbers.keys.sorted().last.flatMap({ storeLotteryNumbers[$0] }) {
        let lastRoundNumber = storeLotteryNumbers.count
        
        let formattedNumbers = round.map({ String($0) }).joined(separator: ", ")
        print("\(lastRoundNumber)회차의 로또 당첨 번호는 \(formattedNumbers) 입니다.")
    }
}

