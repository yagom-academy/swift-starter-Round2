//
//  main.swift
//  CodeStarterCamp_Week2
//

import Foundation


func makeWinningLottoNumbers() -> Set<Int> {
    var winningLottoNumbers: Set<Int> = Set<Int>()
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return winningLottoNumbers
}

func checkWinningLottoNumbers() {
    let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
    let winningLottoNumbers = makeWinningLottoNumbers()
    print("나의 로또 번호: \(myLottoNumbers)")
    print("로또 당첨 번호: \(winningLottoNumbers)")
    
    let resultMyLottoNumbers: Set<Int> = myLottoNumbers.intersection(winningLottoNumbers)

    if resultMyLottoNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(resultMyLottoNumbers)입니다!")
    }
}

checkWinningLottoNumbers()
