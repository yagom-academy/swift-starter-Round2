//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jiyoung Lee on 2022/04/23.
//

import Foundation

var winNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func createWinNumbers(number: Int) -> Set<Int> {
    while winNumbers.count < number {
        winNumbers.insert(Int.random(in: 1...45))
    }
    return winNumbers
}

func checkResult(number:Int) -> (Array<Int>, String) {
    winNumbers = createWinNumbers(number: number)
    let result: Set<Int> = winNumbers.intersection(myLottoNumbers)
    let sortedResult: [Int] = result.sorted()
    
    let matchingNumbers = sortedResult.map { String($0)}.joined(separator: ", ")
    
    return (sortedResult, matchingNumbers)
}

func printResult(number: Int) {
    let winNumbers = createWinNumbers(number: number)
    let (sortedResult, matchingNumbers) = checkResult(number: number)
    
    print(winNumbers)
    
    if sortedResult.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
    }
}
