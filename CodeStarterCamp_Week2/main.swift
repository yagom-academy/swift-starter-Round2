//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


import Foundation


func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count < 6 {
        let randomNum = Int.random(in: 1...45)
        if !lottoNumbers.contains(randomNum) {
            lottoNumbers.append(randomNum)
        }
    }

    return lottoNumbers
}

func checkLottoResults(myNumbers: [Int], pickedNumbers: [Int]) -> String {
    let matchingNumbers = Set(myNumbers).intersection(Set(pickedNumbers))

    if matchingNumbers.isEmpty {
        return "아쉽지만 겹치는 번호가 없습니다."
    } else {
        let matchingNumbersString = matchingNumbers.sorted().map { String($0) }.joined(separator: ", ")
        return "축하합니다! 겹치는 번호는 \(matchingNumbersString) 입니다!"
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let pickedNumbers = generateLottoNumbers()

let resultMessage = checkLottoResults(myNumbers: myLottoNumbers, pickedNumbers: pickedNumbers)
print(resultMessage)



