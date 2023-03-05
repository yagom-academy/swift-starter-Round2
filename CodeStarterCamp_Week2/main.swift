
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
// step1

// step2
func compare(myNumbers: [Int]) {
    let randomNumbers = drawRandomNumber()
    var lotteryNumbers: [Int] = []
    
    for randomNumber in randomNumbers {
        print(randomNumber)
        if myNumbers.contains(randomNumber) {
            print("contains = \(randomNumber)")
            lotteryNumbers.append(randomNumber)
        }
    }
    
    let convertedNumbersToTexts = lotteryNumbers.map { String($0) }
    let bindedText = convertedNumbersToTexts.joined(separator: ",")
    
    if lotteryNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(bindedText) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
//compare(myNumbers: [3, 5, 12, 22, 26, 31])





// step3


var lottoNumber = [String: [Int]]()
var round : Int = 1

func saveRoundLottoNumbers(numbers: [Int]) {
    lottoNumber["\(round)회차"] = numbers
    round += 1
}

@discardableResult
func drawRandomNumber() -> [Int] {
    var numbers: Set<Int> = []
    
    while numbers.count < 6 {
        let randomNubers = Int.random(in: 1...45)
        numbers.insert(randomNubers)
    }
    saveRoundLottoNumbers(numbers: Array(numbers.sorted()))
    return numbers.sorted()
}

func createLotteryRounds(round: Int) {
    for _ in 1...round {
        drawRandomNumber()
    }
}
createLotteryRounds(round: 5)
func checkNumber(checkRound: Int) {
    if let check = lottoNumber["\(checkRound)회차"]  {
        print("\(checkRound)회차의 로또 당첨 번호는 \(check)입니다.")
    } else {
        print("추첨 회차가 아닙니다")
    }
}
checkNumber(checkRound: 1)
checkNumber(checkRound: 2)
checkNumber(checkRound: 3)
checkNumber(checkRound: 4)
checkNumber(checkRound: 5)
checkNumber(checkRound: 6)
checkNumber(checkRound: 7)
checkNumber(checkRound: 8)
