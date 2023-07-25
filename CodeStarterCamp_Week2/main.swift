//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeRound(round: Int) -> String {
    return "\(round)회차"
}

func makeNumber() -> Set<Int> {
    var numbers: Set<Int> = []
    repeat {
        let random = Int.random(in: 1...45)
        numbers.insert(random)
        } while numbers.count < 6
    return numbers
}

func makeLottoNumber(roundByNumbers: inout [String: Set<Int>]) {
    let round = makeRound(round: roundByNumbers.count + 1)
    roundByNumbers[round] = makeNumber()
}

func checkNumbers(roundByNumbers: [String: Set<Int>]) {
    print(roundByNumbers) //check Dictionary
    for num in 1...6 {
        let round = "\(num)회차"
        guard let numbers = roundByNumbers[round] else {
            break
        }
        let sortNumbers = numbers.sorted().map{ String($0) }
        let numbersAddSeparator = sortNumbers.joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(numbersAddSeparator) 입니다.")
    }
}

func compareNumbers(roundByNumbers: [String: Set<Int>], round num: Int, myLottoNumbers: [Int]) {
    let round = "\(num)회차"
    print("\(round)의 결과를 내 번호와 비교합니다")
    
    guard let numbers = roundByNumbers[round] else {
        return
    }
    let result = numbers.intersection(myLottoNumbers).sorted().map { String($0) }
    if result.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let resultAddSeparator = result.joined(separator:", ")
        print("축하합니다! 겹치는 번호는 \(resultAddSeparator) 입니다.")
    }
}

var roundByNumbers: [String: Set<Int>] = [:]
for _ in 1...5 {
    makeLottoNumber(roundByNumbers: &roundByNumbers)
}
checkNumbers(roundByNumbers: roundByNumbers)
//step2
let myLottoNumbers: [Int] = [1, 6, 12, 15, 23, 45]
compareNumbers(roundByNumbers: roundByNumbers, round: 3, myLottoNumbers: myLottoNumbers)
