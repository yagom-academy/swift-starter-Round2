//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = [1,2,3,4,5,6]
var randomNumbers: Set<Int> = Set<Int>()
var lottoNumbers: Set<Int> = Set(myLottoNumbers)

func createLottoNumber() {
    var randomNumber: Int
    
    while randomNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        if !randomNumbers.contains(randomNumber) {
            randomNumbers.insert(randomNumber)
        }
    }
}

func checkLottoNumber() {
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

createLottoNumber()
checkLottoNumber()
