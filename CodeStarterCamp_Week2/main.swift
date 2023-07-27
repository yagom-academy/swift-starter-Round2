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

func generateRandomNumbers() -> Set<Int> {
    var numbers: Set<Int> = []
    
    repeat {
        let random = Int.random(in: 1...45)
        numbers.insert(random)
        } while numbers.count < 6
    return numbers
}

func makeLottoNumber(maxRound: Int) {
    for currentRound in 1...maxRound {
        let round = makeRound(round: currentRound)
        
        roundByNumbers[round] = generateRandomNumbers()
    }
}

/*
 func checkAllNumbers() {
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
*/

func checkNumbers(forRound round: Int) {
    let roundString = makeRound(round: round)
    
    guard let numbers = roundByNumbers[roundString] else {
        return
    }
    let sortNumbers = numbers.sorted().map{ String($0) }
    let numbersAddSeparator = sortNumbers.joined(separator: ", ")
    print("\(roundString)의 로또 당첨 번호는 \(numbersAddSeparator) 입니다.")
}


func compareNumbers(forRound round: Int) {
    let roundString = "\(round)회차"
    print("\(roundString)의 결과를 내 번호와 비교합니다.")
    
    guard let numbers = roundByNumbers[roundString] else {
        print("\(roundString)는 진행되지 않았습니다.")
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
makeLottoNumber(maxRound: 5)
checkNumbers(forRound: 3)

let myLottoNumbers: Set<Int> = generateRandomNumbers()
compareNumbers(forRound: 5)
