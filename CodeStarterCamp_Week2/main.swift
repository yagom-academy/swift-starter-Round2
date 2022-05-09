//
//  main.swift
//  week2
//
//  Created by 피우리 on 2022/05/03.
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
    let intersectionLottoNumbers : Set<Int> = winnerNumbers.intersection(myLottoNumbers)
    if intersectionLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(intersectionLottoNumbers) 입니다!")
    }
}
printLottoResult()



