//
//  lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 공혜지 on 1/8/24.
//

import Foundation

var numbersArray = Array(1...45)
var lottoNumbers = Set<Int>()

func generateRandomNumber() -> Int? {
    if numbersArray.isEmpty {
        return nil
    }
    
    let randomIndex = Int.random(in: 0..<numbersArray.count)
    let randomNumber = numbersArray[randomIndex]
    numbersArray.remove(at: randomIndex)
    
    return randomNumber
}

func generateLottoByLength(length: Int) -> Set<Int> {
    lottoNumbers = Set<Int>()
    
    for _ in 1...length {
        if let number = generateRandomNumber() {
            lottoNumbers.insert(number)
        }
    }
    return lottoNumbers
}

func compareMyNumberToLotto(myNumbers: Array<Int>) {
    let intersection: Set<Int> = lottoNumbers.intersection(myNumbers)
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
