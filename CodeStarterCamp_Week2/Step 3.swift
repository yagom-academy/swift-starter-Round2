//
//  Step 3.swift
//  CodeStarterCamp_Week2
//
//  Created by Wonbi on 2022/04/28.
//

import Foundation

func makeWinnerNumbers(time: Int){
    for timeCounter in 1...time {
        var winnerNumbers: Set<Int> = []
        while winnerNumbers.count != 6 {
            winnerNumbers.insert(Int.random(in: 1...45))
        }
        winnerNumbersStorage["\(timeCounter)회차"] = winnerNumbers.sorted()
    }
}

func checkWinnerNumbers(round: Int) {
    if var winnerNumbers = winnerNumbersStorage["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        while winnerNumbers.count > 1 {
            print(winnerNumbers[0], terminator: ", ")
            winnerNumbers.removeFirst()
        }
        print(winnerNumbers[0], "입니다.", separator: " ")
    } else {
        print("해당 회차는 아직 추첨을 진행하지 않았습니다.")
    }
}
