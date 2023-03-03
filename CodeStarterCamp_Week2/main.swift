
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
// step1
func drawRandomNumber() -> [Int] {
    var numbers: Set<Int> = []
    
    while numbers.count < 6 {
        let randomNubers = Int.random(in: 1...45)
        numbers.insert(randomNubers)
    }
    return numbers.sorted()
}

// step2
func compare(myNumbers: [Int]) {
    let randomNumbers = drawRandomNumber()
    var lotteryNumbers: [Int] = []
    
    for randomNumber in randomNumbers {
        if myNumbers.contains(randomNumber) {
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

func saveLottoNumber() { // 로또 번호 생성 저장 진행
    let numberDraw = drawRandomNumber()
    lottoNumber["\(round)회차"] = numberDraw
    round += 1
    print(" 회차 \(lottoNumber)")
}

func createLotteryRounds() { // 5회차 생성
    for _ in 1...5 {
        saveLottoNumber()
    }
}

func numberCheck(checkRound: Int) {
    print("체크 함수")
    if let check = lottoNumber["\(checkRound)회차"]  {
        print("\(checkRound)회차의 로또 당첨 번호는 \(check)입니다.")
    }
}
createLotteryRounds()
numberCheck(checkRound: 1)
