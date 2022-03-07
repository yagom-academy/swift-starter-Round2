//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var resultLottoNumbers: [String] = []

func returnGeneratorLotteNumber() -> Array<Int> {

    var randomNumbers: [Int: Int] = [:]
    var randomLottoNumbers: [Int] = []
    for numbers in 1...45 {
        randomNumbers[numbers] = numbers
    }

    for _ in 1...6 {
        let lottoNumber = randomNumbers.randomElement()
        if let lottoNumber = lottoNumber {
            randomLottoNumbers.append(lottoNumber.key)
            randomNumbers.removeValue(forKey: lottoNumber.key)
        } else {
            print("error")
        }
    }
    return randomLottoNumbers
}

func checkOverlappingNumbers(_ overlappingNumber: Array<Int>) {
    let lottoWinningNumbers: [Int] = overlappingNumber
    for myLottoNumber in myLottoNumbers {
        let checkLottoNumber = lottoWinningNumbers.contains(myLottoNumber)
        if checkLottoNumber == true {
            resultLottoNumbers.append(String(myLottoNumber))
        }
    }
}

checkOverlappingNumbers(returnGeneratorLotteNumber())

if resultLottoNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    let printNumbers = resultLottoNumbers.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(printNumbers) 입니다!")
}
