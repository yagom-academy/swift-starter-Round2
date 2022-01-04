//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
 
var winningLottoNumbers: Dictionary<Int, Set<Int>> = Dictionary<Int, Set<Int>>()
var myLottoNumbers: [Int] = [1,2,3,4,5,6]
var lottoNumbers: Set<Int> = Set(myLottoNumbers)
var round: Int = 1

func createLottoNumber() {
    var randomNumbers: Set<Int> = Set<Int>()
    var randomNumber: Int
    while randomNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        randomNumbers.insert(randomNumber)
    }
    storeWinningLottoNumbers(round: round, randomNumbers: randomNumbers)
    checkLottoNumber(randomNumbers: randomNumbers)
    round += 1
}

func checkLottoNumber(randomNumbers: Set<Int>) {
    var intersectionLottoNumberSentence: String = ""
    let intersectionLottoNumbers: Set<Int> = randomNumbers.intersection(lottoNumbers)
    let sortedIntersectionLottoNumber = intersectionLottoNumbers.sorted()
    let myLottoNumberMax = sortedIntersectionLottoNumber.max()
    
    if sortedIntersectionLottoNumber != [] {
        for sortedLottoNumber in sortedIntersectionLottoNumber {
            if sortedLottoNumber != myLottoNumberMax {
                intersectionLottoNumberSentence = intersectionLottoNumberSentence + "\(sortedLottoNumber)" + ","
            } else {
                intersectionLottoNumberSentence = intersectionLottoNumberSentence + "\(sortedLottoNumber)"
            }
        }
        print("축하합니다! 겹치는 번호는 \(intersectionLottoNumberSentence) 입니다 !")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
 
func storeWinningLottoNumbers(round: Int, randomNumbers: Set<Int>) {
    winningLottoNumbers[round] = randomNumbers
}

func roundWinningLottoNumbers(round: Int) {
    var sortedWinningLottoNumbersSentence: String = ""
    
    if let sortedWinningLottoNumbers = winningLottoNumbers[round]?.sorted() {
        var lottoNumCount = 0
        for winningNumber in sortedWinningLottoNumbers {
            if lottoNumCount != 5 {
                sortedWinningLottoNumbersSentence = sortedWinningLottoNumbersSentence + "\(winningNumber),"
            } else {
                sortedWinningLottoNumbersSentence = sortedWinningLottoNumbersSentence + "\(winningNumber)"
            }
            lottoNumCount = lottoNumCount + 1
        }
    }
    print("\(round)회차의 로또 당첨 번호는 \(sortedWinningLottoNumbersSentence) 입니다.")
}
 
func fiveRepeatCreateLottoNumber() {
    createLottoNumber()
    createLottoNumber()
    createLottoNumber()
    createLottoNumber()
    createLottoNumber()
}

 

fiveRepeatCreateLottoNumber()

roundWinningLottoNumbers(round: 2)
