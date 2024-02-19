//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var lottoNumbersHistory: [Int: Set<Int>] = [:]

drawLottoGames()
checkWinningHistory(at: 1)
checkWinningHistory(at: 5)
checkWinningHistory(at: 10)
checkWinningHistory(at: -1)

func drawLottoGames() {
    for i in 1...5 {
        lottoNumbersHistory[i] = drawRandomNumbers()
    }
}

func checkWinningHistory(at round: Int) {
    guard round > 0 else {
        print("유효하지 않은 입력입니다.")
        return
    }
    
    if let winningNumbers = lottoNumbersHistory[round] {
        print("\(round)회차의 로또 당첨번호는 \(winningNumbers.map({ String($0) }).joined(separator: ", ")) 입니다.")
    } else {
        print("\(round)회차의 로또 당첨 번호는 아직 추첨하지 않았습니다.")
    }
}
