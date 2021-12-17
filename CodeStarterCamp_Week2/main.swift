//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by quokkaaa
//  Copyright © yagom academy. All rights reserved

import Foundation

let myLottoNumbers: [Int] = [7, 8, 15, 20, 23, 38]
var lottoDrawHistoryRepository: [String: [Int]] = [:]
var presentLottoDrawCounter = 0

func generateLottoNumbers(count: Int) -> Set<Int> {
    var numbers: Set<Int> = []
    while numbers.count < count {
        numbers.insert(Int.random(in: 1...45))
    }
    return numbers
}

func confirmLottoNumbers(_ numbers: [Int]) -> String {
    var drawLottoNumbers = generateLottoNumbers(count: 6)
    var lottoNumbersResult: [Int] = []
    var answerLottoNumbersResult: [Int] = []
    
    for _ in 0..<drawLottoNumbers.count {
        lottoNumbersResult.append(drawLottoNumbers.removeFirst())
    }
    for index in 0..<numbers.count {
        if numbers[index] == lottoNumbersResult[index] {
            answerLottoNumbersResult.append(numbers[index])
        }
    }
    
    if answerLottoNumbersResult.count >= 1 {
        return "축하합니다! 겹치는 번호는 \(answerLottoNumbersResult.description.trimmingCharacters(in: ["[","]"])) 입니다!"
    } else {
        return "아쉽지만 겹치는 번호가 없습니다."
    }
}

func saveLottoDrawNumbers(the numbers: Set<Int>) {
    var unorderedNumbers = numbers
    var lottoNumbers: [Int] = []
    
    for _ in 0..<unorderedNumbers.count {
        lottoNumbers.append(unorderedNumbers.removeFirst())
    }
    
    if lottoDrawHistoryRepository.keys.count == 0 {
        lottoDrawHistoryRepository["1회차"] = lottoNumbers
        presentLottoDrawCounter += 1
    } else {
        lottoDrawHistoryRepository["\(String(presentLottoDrawCounter))"+"회차"] = lottoNumbers
        presentLottoDrawCounter += 1
    }
}
