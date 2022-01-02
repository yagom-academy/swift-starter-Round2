//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winningLottoNumbers: Dictionary<Int, Any> = Dictionary<Int, Any>()
var myLottoNumbers: [Int] = [1,2,3,4,5,6]
var lottoNumbers: Set<Int> = Set(myLottoNumbers)
var round: Int = 1

func createLottoNumber() {
    var randomNumbers: Set<Int> = Set<Int>()
    var randomNumber: Int
    while randomNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        if !randomNumbers.contains(randomNumber) {
            randomNumbers.insert(randomNumber)
        }
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
    let sortedRandomNumbers = randomNumbers.sorted()
    winningLottoNumbers[round] = sortedRandomNumbers
}

func RoundWinningLottoNumbers(round: Int) {
    if let RoundLottoNumber = winningLottoNumbers[round]{
        print("\(round)회차의 로또 당첨 번호는 \(RoundLottoNumber) 입니다.")
    }else{
        print("nil값이다")
    }
}

createLottoNumber()
createLottoNumber()
createLottoNumber()
createLottoNumber()
createLottoNumber()

RoundWinningLottoNumbers(round: 2)
