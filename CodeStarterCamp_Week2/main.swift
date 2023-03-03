//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var myLottoNumbersSet = Set(myLottoNumbers)

func collectLottoNumber() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return lottoNumbers
}

func checkLottoNumbers(lotto collectNumbers: Set<Int>, my myNumbers: Set<Int>) {
    let numbersIntersection: Set<Int> = collectNumbers.intersection(myNumbers)
    let numbersSorted = numbersIntersection.sorted()
    if numbersSorted.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for numberCount in 0...numbersSorted.count-1 {
            let collectNumber = numbersSorted[numberCount]
            if numberCount < numbersSorted.count-1 {
                print("\(collectNumber), ", terminator: "")
            } else {
                print("\(collectNumber) ", terminator: "")
            }
        }
        print("입니다!")
    }
}

checkLottoNumbers(lotto: collectLottoNumber(), my: myLottoNumbersSet)
