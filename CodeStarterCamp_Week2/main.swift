//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    return lottoNumbers
}

func changeNumbersToSentence(from numbers: [Int]) -> String {
    var sentenceNumbers = ""
    for order in 0...(numbers.count - 1) {
        if order == (numbers.count - 1) {
            sentenceNumbers.append("\(numbers[order])")
        } else {
            sentenceNumbers.append("\(numbers[order]), ")
        }
    }
    return sentenceNumbers
}

func checkLottoNumbers(with myNumbers: [Int]) {
    var sameNumbers: [Int] = []
    let lottoNumbers: Set<Int> = createLottoNumbers()
    
    for count in 0...5 {
        if lottoNumbers.contains(myNumbers[count]) {
            sameNumbers.append(myNumbers[count])
        }
    }
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(changeNumbersToSentence(from: sameNumbers)) 입니다!")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

checkLottoNumbers(with: myLottoNumbers)



