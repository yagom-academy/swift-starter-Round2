//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by suyeon park on 2023/03/07.
//

import Foundation

var beforeLottoNumbers = Dictionary<Int, [Int]>()

func findBeforeLottoNumbers(beforeTurn: Int) {
    saveLottoes()
    printLotto(beforeTurn: beforeTurn)
}

private func saveLottoes() {
    for index in 1...5 {
        beforeLottoNumbers.updateValue(makeLotto().sorted(), forKey: index)
    }
}

private func printLotto(beforeTurn: Int) {
    let lottoNumbers = beforeLottoNumbers[beforeTurn]

    if let numbers = lottoNumbers {
        print("\(beforeTurn)회차의 로또 당첨 번호는 ", terminator: "")
        
        for index in 0...(numbers.count-1) {
            if index == 0 {
                print("\(numbers[index])", terminator: "")
            } else {
                print(", \(numbers[index])", terminator: "")
            }
        }
        
        print(" 입니다!")
    }
}
