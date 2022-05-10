//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

//func shuffledLottoNumbers() -> [Int] {
//    let numbers: [Int] = Array((1...45).shuffled()[0...6])
//    return numbers
//}

func creatRandomNumbers() -> Set<Int> {
    var randomNumber: Set<Int> = Set<Int>()
    while randomNumber.count < 6 {
        randomNumber.insert(Int.random(in: 1...45))
    }
    return randomNumber
}

func checkWinningNumbers(lottoNumber: Set<Int>, myNumbers: [Int]) -> [Int] {
    var sameNumbers: [Int] = []
    for lottoNumber in lottoNumber {
        if myLottoNumbers.contains(lottoNumber) {
            sameNumbers.append(Int(lottoNumber))
        }
    }
    return sameNumbers
}



func printWinningResultNumbers(sameNumbers: [Int]) {
    let stringSameNumbers = sameNumbers.map { String($0) }
    let joinedNumbers = stringSameNumbers.joined(separator: ", ")
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(joinedNumbers) 입니다!")
    }
}

// randomNumber 결과값 출력 [ 확인용 ]
let randomNumber = creatRandomNumbers()
print(randomNumber)

let winningNumbers = checkWinningNumbers(lottoNumber: randomNumber, myNumbers: myLottoNumbers)
printWinningResultNumbers(sameNumbers: winningNumbers)
