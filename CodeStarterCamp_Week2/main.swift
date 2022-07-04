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


func generateRandomLottoNumber() -> [Int] {
    var winningLottoNumbers: Set<Int> = []
    
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    saveWinningNumbers(winningNumbers: Array(winningLottoNumbers))
    
    return Array(winningLottoNumbers)
}


func saveWinningNumbers(winningNumbers: [Int]) {
    
    // lottoRound = winningNumberDB.count + 1
    lottoRound += 1
    winningNumbersDB["\(String(lottoRound))회차"] = winningNumbers
    
}


func comparedNumbers(winningNumbers: [Int]) -> [Int] {
    var matchedNumbers: [Int] = []
    
    for myNumber in myLottoNumbers {
        if winningNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber) // append vs. insert
        }
    }
    return matchedNumbers
}


func selectLottoRound(roundNumber: Int) {
    let round = "\(roundNumber)회차"
    if let selectedWinningNumbers = winningNumbersDB[round] {
        printWinningNumberDB(round: round, selecedRoundNumbers: selectedWinningNumbers.sorted())
    } else {
        print("Not found")
    }
}


func intToStringNumbers(numbers: [Int]) -> [String] {
    var intToStringArray = [String]()
    
    for number in numbers.sorted() {
        intToStringArray.append(String(number))
    }
    
    return intToStringArray
}


func printLottoResult(thisTimeWinningNumbers: [Int], matchedNumbers: [Int]) {
    let numbers = intToStringNumbers(numbers: matchedNumbers)
    
    print("현재 \(lottoRound)회차 로또 당첨 번호: \(thisTimeWinningNumbers.sorted())")
    print("내가 찍은 번호: \(myLottoNumbers.sorted())")
    if numbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(numbers.joined(separator: ", ")) 입니다. 총 \(numbers.count)개가 겹쳤습니다.")
    }
}


func printWinningNumberDB(round: String, selecedRoundNumbers: [Int]) {
    let numbers = intToStringNumbers(numbers: selecedRoundNumbers)
    
    print("\(round)의 로또 당첨 번호는 \(numbers.joined(separator: ", ")) 입니다.")
}


// ----------------------------------------------- //



for _ in 1...5 {
    // 반환값을 저장하지 않고 함수를 호출합니다.
    //generateRandomLottoNumber()
    // 함수를 호출하고 _를 사용하여 반환값을 이름 없는 변수에 저장함. 이 반환값은 어디에도 저장되지 않음.
    _ = generateRandomLottoNumber()
}

var winningNumbers = generateRandomLottoNumber()
var myMatchedNumbers = comparedNumbers(winningNumbers: winningNumbers)

printLottoResult(thisTimeWinningNumbers: winningNumbers, matchedNumbers: myMatchedNumbers)

selectLottoRound(roundNumber: 3)

//print(winningNumbersDB)
