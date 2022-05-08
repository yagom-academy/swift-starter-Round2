//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//var randomNumber: Set<Int> = Set<Int>()
//
//func printRandomNumber() {
//    while randomNumber.count < 6 {
//        randomNumber.insert(Int.random(in: 1...45))
//    }
//    print(randomNumber.sorted())
//}
//
//var sameNumbers: [Int] = []
//
//func printWinningNumber(lottoNumber: Set<Int>, myNumbers: [Int]) {
//    let numbers = lottoNumber
//    for lottoNumber in numbers {
//        if myLottoNumbers.contains(lottoNumber) {
//            sameNumbers.append(Int(lottoNumber))
//        }
//    }
//}
//
//func mainLottoResult(sameNumbers: [Int]) {
//    if sameNumbers.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    } else {
//        print("축하합니다! 겹치는 번호는 \(sameNumbers) 입니다!")
//    }
//}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func creatRandomNumbers() -> Set<Int> {
    var randomNumber: Set<Int> = Set<Int>()
    while randomNumber.count < 6 {
        randomNumber.insert(Int.random(in: 1...45))
    }
    return randomNumber
}

func creatWinningNumbers(lottoNumber: Set<Int>, myNumbers: [Int]) -> [Int] {
    var sameNumbers: [Int] = []
    let numbers = lottoNumber
    for lottoNumber in numbers {
        if myLottoNumbers.contains(lottoNumber) {
            sameNumbers.append(Int(lottoNumber))
        }
    }
    return sameNumbers
}

func printLottoNumbers(sameNumbers: [Int]) {
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers) 입니다!")
    }
}
let randomNumber = creatRandomNumbers()
print(randomNumber)
let winningNumbers = creatWinningNumbers(lottoNumber: randomNumber, myNumbers: myLottoNumbers)
printLottoNumbers(sameNumbers: winningNumbers)
