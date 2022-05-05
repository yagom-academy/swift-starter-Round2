//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createRandomNumber() -> Int {
        return Int.random(in: 1..<46)
}
var winnerNumbers: Set<Int> = Set<Int>()
func createWinnerNumbers() -> Set<Int> {
    repeat {
        winnerNumbers.insert(createRandomNumber())
    } while winnerNumbers.count < 6
    
    return winnerNumbers
}
createWinnerNumbers()

let myLottoNumbers: [Int] = [7, 12, 15, 22, 43, 44]
func printLottoResult() {
    let arrayToSetConverter = Set(myLottoNumbers)
    if arrayToSetConverter == winnerNumbers {
        print("축하합니다! 겹치는 번호는 \(myLottoNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
printLottoResult()
