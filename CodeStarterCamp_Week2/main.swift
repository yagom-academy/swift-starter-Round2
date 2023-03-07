//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let myLottoNumbersSet: Set<Int> = Set(myLottoNumbers)

func selectLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return lottoNumbers
}

func checkLottoNumbers(selectLottoNumbers: Set<Int>, myLottoNumbers: Set<Int>) {
    let lottoNumbersSorted: [Int] = selectLottoNumbers.intersection(myLottoNumbers).sorted()
//    let numbersIntersection: Set<Int> = collectNumbers.intersection(myNumbers)
//    let numbersSorted = numbersIntersection.sorted()
    if lottoNumbersSorted.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for numberIndex in 0...lottoNumbersSorted.count-1 {
            let checkNumber = lottoNumbersSorted[numberIndex]
            if numberIndex < lottoNumbersSorted.count-1 {
                print("\(checkNumber), ", terminator: "")
            } else {
                print("\(checkNumber) ", terminator: "")
            }
        }
        print("입니다!")
    }
}

checkLottoNumbers(selectLottoNumbers: selectLottoNumbers(), myLottoNumbers: myLottoNumbersSet)
