//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/25.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var numberDrawn: Set<Int> = []


func generateLotto() {
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        numberDrawn.insert(pickedNumber)
    } while numberDrawn.count != myLottoNumbers.count
}

func checkWinner() {
    let matchingNumbers = myLottoNumbers.intersection(numberDrawn)
    if matchingNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let matchingNumber = matchingNumbers.sorted()
                                            .map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchingNumber) 입니다!")
    }
}
