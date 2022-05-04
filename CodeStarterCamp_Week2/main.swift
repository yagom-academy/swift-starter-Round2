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
var winnerNumber: Set<Int> = Set<Int>()
func createWinnerNumbers() -> Set<Int> {
    repeat {
        winnerNumber.insert(createRandomNumber())
    } while winnerNumber.count < 6
    
    return winnerNumber
}
createWinnerNumbers()

let myLottoNumbers: [Int] = [7, 12, 15, 22, 43, 44]
func createLottoNumberIndex(indexNum: Int) -> Int {
    for indexNumber in 0...indexNum{
        myLottoNumbers[indexNumber]
    }
    return myLottoNumbers[indexNum]
}
func resultOfLotto() {
    if winnerNumber.contains(createLottoNumberIndex(indexNum: 5)) {
        print("축하합니다! 겹치는 번호는 \(myLottoNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
resultOfLotto()
