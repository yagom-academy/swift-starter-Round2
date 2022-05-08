//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var allLottoNumbers: [String: [Int]] = [:]

//로또번호 생성 시작
makeLottoNumber(howMany: 5)
checkSecondLottoNumbers()

func makeLottoNumber(howMany count: Int) {
    for _ in 1...count {
        let winLottoNumbers: [Int] = makeLottoNumbers()
        makeAllLottoNumbers(with: winLottoNumbers)
    }
}

//한 회차의 로또번호 생성
func makeLottoNumbers() -> [Int] {
    var winNumbers: [Int] = []
    
    while winNumbers.count < 6 {
        let winNumber = Int.random(in: 1...45)
        if !winNumbers.contains(winNumber) {
            winNumbers.append(winNumber)
        }
    }
    return winNumbers
}

//회차 key값을 가진 로또번호 생성
func makeAllLottoNumbers(with winLottoNumbers: [Int]) {
    allLottoNumbers["\(allLottoNumbers.count)회차"] = winLottoNumbers
}

// 2회차 로또번호 확인
func checkSecondLottoNumbers() {
    if let allLottoNumbers = allLottoNumbers["2회차"] {
        let mySecondWinLottoNumbers: [Int] = compareLottoNumbers(by: allLottoNumbers , with: myLottoNumbers)
        printWinLottoNumbers(by: mySecondWinLottoNumbers, round: 2)
    } else {
        print("2회차 로또번호를 찾을 수 없습니다.")
    }
}

// 내 로또번호와 비교
func compareLottoNumbers(by winLottoNumbers: [Int], with myLottoNumbers: [Int]) -> [Int] {
    var myWinNumber: [Int] = []
    
    for number in winLottoNumbers {
        if myLottoNumbers.contains(number) {
            myWinNumber.append(number)
        }
    }
    return myWinNumber
}

// 당첨번호 출력
func printWinLottoNumbers(by winNumbers: [Int], round: Int) {
    var resultString: String = ""
    
    for winNumber in winNumbers {
        winNumbers.first == winNumber ? resultString.append("\(winNumber)") : resultString.append(", \(winNumber)")
    }
    winNumbers.isEmpty ? print("아쉽지만 겹치는 번호가 없습니다.") : print("\(round)회차의 로또 당첨 번호는 \(resultString) 입니다!")
}
