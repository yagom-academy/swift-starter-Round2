//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumber() -> Set<Int> {
    var numbers = Set<Int>()
    
    while numbers.count < 6 {
        numbers.insert(Int.random(in: 1...45))
    }
    
    return numbers
}

func checkCorrectNumber(myLottoNum: [Int], lottoNum: Set<Int>) -> [Int] {
    let myLotto = Set(myLottoNum)
    let correctNumber = myLotto.intersection(lottoNum)
    
    return Array(correctNumber).sorted()
}

func printCorrectNumber(correctNum: [Int]) {
    if correctNum.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for number in correctNum {
            if correctNum.last != number {
                print("\(number)", terminator: ", ")
            } else {
                print("\(number)", terminator: " ")
            }
        }
        print("입니다!")
    }
}

func checkMyLottoNumber(myLottoNumbers: [Int]) {
    let randomLottoNumbers = makeLottoNumber()
    let correctNumber = checkCorrectNumber(myLottoNum: myLottoNumbers, lottoNum: randomLottoNumbers)

    printCorrectNumber(correctNum: correctNumber)
}

func makeLottoDictonary() -> [String: Set<Int>] {
    var lottoDictonary: [String: Set<Int>] = [:]
    
    for _ in 1...5 {
        if let round = Array(lottoDictonary.keys.sorted()).last {
            if let beforeRound = Int(round.components(separatedBy: "회")[0]) {
                lottoDictonary["\(beforeRound+1)회차"] = makeLottoNumber()
            }
        } else {
            lottoDictonary["1회차"] = makeLottoNumber()
        }
    }
    
    return lottoDictonary
}

func printRoundCorrectNumber(round: Int, lottoDictonary: [String: Set<Int>]) {
    if let roundLotto = lottoDictonary["\(round)회차"] {
        let lottoNumbers = "\(roundLotto.sorted())".trimmingCharacters(in: ["[", "]"])
        print("\(round)회차의 당첨번호는 \(lottoNumbers) 입니다")
    } else {
        print("\(round)회차의 당첨번호는 추첨 전 상태입니다.")
    }
}

func checkRoundLottoNumber(round: Int) {
    let lottoCorrectDictonary = makeLottoDictonary()
    printRoundCorrectNumber(round: round, lottoDictonary: lottoCorrectDictonary)
}

checkRoundLottoNumber(round: 2)
