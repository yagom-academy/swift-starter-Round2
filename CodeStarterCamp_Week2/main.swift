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

func generateRandomLottoNumber() -> [Int] {
    var winningLottoNumbers: Set<Int> = []
    
    
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return Array(winningLottoNumbers)
}

func comparedNumbers(winnigNumbers: [Int]) -> [Int] {
    var matchedNumbers: [Int] = []
    
    for myNumber in myLottoNumbers {
        if winnigNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber) // append vs. insert
        }
    }
    return matchedNumbers
}

func printLottoResult(matchedNumbers: [Int]) {
    
    var intToStringNumbers = ""
    for number in matchedNumbers {
        if number == matchedNumbers.last {
            intToStringNumbers.append(String(number))
            //intToStringNumbers += String(number)
        } else {
            intToStringNumbers.append("\(String(number)), ")
            //intToStringNumbers += "\(String(number)), "
        }
    }
    
    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(intToStringNumbers) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다.")
    }
}

func printInformation() {
    print("로또 당첨 번호: \(generateRandomLottoNumber().sorted())")
    print("내가 찍은 번호: \(myLottoNumbers.sorted())")
}

let myMatchedNumbers = comparedNumbers(winnigNumbers: generateRandomLottoNumber())

printInformation()
printLottoResult(matchedNumbers: myMatchedNumbers)
