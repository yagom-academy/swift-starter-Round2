//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by quokkaaa
//  Copyright © yagom academy. All rights reserved

import Foundation

let myLottoNumbers: [Int] = [7, 8, 15, 20, 23, 38]
var lottoDrawHistoryRepository = [String: [Int]]()
var presentLottoDrawCounter = 1

@discardableResult func generateLottoNumbers(count: Int) -> Set<Int> {
    var numbers = Set<Int>()
    while numbers.count < count {
        numbers.insert(Int.random(in: 1...45))
    }
    saveLottoDrawNumbers(the: numbers)
    return numbers
}

func compareLottoNumbers(_ numbers: [Int]) -> String {
    let answerLottoNumbersResult = generateLottoNumbers(count: 6).intersection(numbers).sorted()
    if answerLottoNumbersResult.count >= 1 {
        return "축하합니다! 겹치는 번호는 \(answerLottoNumbersResult.description.trimmingCharacters(in: ["[","]"])) 입니다!"
    } else {
        return "아쉽지만 겹치는 번호가 없습니다."
    }
}

func saveLottoDrawNumbers(the numbers: Set<Int>) {
        lottoDrawHistoryRepository["\(String(presentLottoDrawCounter))"+"회차"] = numbers.sorted()
        presentLottoDrawCounter += 1
}

func repeatGenerateLottoNumbers(until count: Int) {
    for _ in 0..<count {
        generateLottoNumbers(count: 6)
    }
}

func printLottoDrawNumbers(at round: Int) {
    if let lottoNumbers = lottoDrawHistoryRepository["\(round)"+"회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers.description.trimmingCharacters(in: ["[","]"])) 입니다.")
    }
}
generateLottoNumbers(count: 6)
print(lottoDrawHistoryRepository)
repeatGenerateLottoNumbers(until: 5)
print(lottoDrawHistoryRepository)
printLottoDrawNumbers(at: 2)
