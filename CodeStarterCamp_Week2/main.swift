//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var randomNumberSet: Set<Int> = Set<Int>()
var myLottoNumbersSet: Set<Int> = Set<Int>()

for number in myLottoNumbers {
    myLottoNumbersSet.insert(number)
}

func createLottoNumber() {
    var randomNumber: Int
    var randomNumberArray: Array<Int> = []
    
    while randomNumberArray.count < 6 {
        randomNumber = Int.random(in: 1...45)
        if !randomNumberArray.contains(randomNumber) {
            randomNumberArray.append(randomNumber)
            randomNumberSet.insert(randomNumber)
        }
    }
}

func checkLottoNumber() {
    var lottoNumberString: String = ""
    let intersectionLottoNumber: Set<Int> = randomNumberSet.intersection(myLottoNumbersSet)
    let sortedIntersectionLottoNumber = intersectionLottoNumber.sorted()
    let myLottoNumberMax = sortedIntersectionLottoNumber.max()
    
    if sortedIntersectionLottoNumber != [] {
        for index in sortedIntersectionLottoNumber {
            if index != myLottoNumberMax {
                lottoNumberString = lottoNumberString + "\(index)" + ","
            } else {
                lottoNumberString = lottoNumberString + "\(index)"
            }
        }
        print("축하합니다! 겹치는 번호는 \(lottoNumberString) 입니다 !")
    }else{
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

createLottoNumber()
checkLottoNumber()


