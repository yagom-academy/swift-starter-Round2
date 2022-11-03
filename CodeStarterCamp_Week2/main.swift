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

func makeLottoDictonary(lotto: [String: Set<Int>]) -> [String :Set<Int>] {
    var numbers = Set<Int>()
    var lottoDictonary = lotto

    while numbers.count < 6 {
        numbers.insert(Int.random(in: 1...45))
    }
    
    if let round = Array(lottoDictonary.keys.sorted()).last {
        if let beforeRound = Int(round.components(separatedBy: "회")[0]) {
            lottoDictonary["\(beforeRound+1)회차"] = numbers
        }
    } else {
        lottoDictonary["1회차"] = numbers
    }
    
    return lottoDictonary
}

func printRoundCorrectNumber(round: Int, numbers: Set<Int>) {
    let lottoNumbers = "\(numbers.sorted())".trimmingCharacters(in: ["[", "]"])
    print("\(round)회차의 당첨번호는 \(lottoNumbers) 입니다")
}

func checkRoundLottoNumber(round: Int) {
    var lottoCorrectDictonary: [String: Set<Int>] = [:]
    for _ in 1...5 {
        lottoCorrectDictonary = makeLottoDictonary(lotto: lottoCorrectDictonary)
    }
    
    if let roundLotto = lottoCorrectDictonary["\(round)회차"] {
        printRoundCorrectNumber(round: round, numbers: roundLotto)
    } else {
        print("\(round)회차는 아직 나오지 않았습니다!!")
    }
}

checkRoundLottoNumber(round: 2)
