//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
// - todo -
// 1. Step1의 순서도를 바탕으로 로또 당첨 번호를 생성하는 함수
// 2. 내가 찍은 번호 배열을 myLottoNumbers 변수에 할당
// 3. 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수를 생성합니다.
//  - 겹치는 번호를 포함하는 문구를 print합니다.
//  - 만약 겹치는 번호가 없다면 다음과 같은 문구를 print합니다. "아쉽지만 겹치는 번호가 없습니다."
//

import Foundation

let myLottoNumbers: [Int] = [1, 7, 15, 29, 36, 42]
var winningNumbersDB: Dictionary<String, Array<Int>> = [:]
var lottoRound: Int = 0
// var lottoRound: Dictionary<Int, Array<Int>> = [String, Array<Int>]() // 에러 나는 이유?


@discardableResult
func generateRandomLottoNumber() -> [Int] {
    var winningLottoNumbers: Set<Int> = []
    
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
        
    return Array(winningLottoNumbers)
}


func saveWinningNumbers(winningNumbers: [Int]) {
    
    lottoRound += 1
    
    let winningNumbersKey = "\(String(lottoRound))회차"
    winningNumbersDB[winningNumbersKey] = winningNumbers
}


func printSelectedLottoNumbers(roundNumber: Int) {
    let round = "\(roundNumber)회차"
    if let selectedWinningNumbers = winningNumbersDB[round] {
        printingFormat(round: round, selectedRoundNumbers: selectedWinningNumbers.sorted())
    } else {
        print("해당하는 회차를 찾지못했습니다.")
    }
}


func intToStringNumbers(numbers: [Int]) -> [String] {
    var intToStringArray = [String]()
    
    for number in numbers.sorted() {
        intToStringArray.append(String(number))
    }
    
    return intToStringArray
}


func printingFormat(round: String, selectedRoundNumbers: [Int]) {
    let numbers = intToStringNumbers(numbers: selectedRoundNumbers)
    
    print("\(round)의 로또 당첨 번호는 \(numbers.joined(separator: ", ")) 입니다.")
}


// ----------------------------------------------- //



for _ in 1...5 {
    saveWinningNumbers(winningNumbers: generateRandomLottoNumber())
}

printSelectedLottoNumbers(roundNumber: 4)
//print(winningNumbersDB)
