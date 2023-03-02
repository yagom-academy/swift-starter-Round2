//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func pickLottoNumbers() -> Set<Int> {
    var randomNumber = 0
    var lottoNumbers = Set<Int>()
    while lottoNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    return lottoNumbers
}

func compareSameNumbers(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) -> Array<Int> {
    var sameNumbers = Array<Int>()
    for myNumber in myLottoNumbers {
        for lottoNumber in lottoNumbers {
            if myNumber == lottoNumber {
                sameNumbers.append(myNumber)
            }
        }
    }
    return sameNumbers
}

func compareSameNumbers2(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) -> Set<Int> {
    let setMyLottoNumbers = Set(myLottoNumbers)
    let sameNumbers: Set<Int> = setMyLottoNumbers.intersection(lottoNumbers)
    return sameNumbers
}


func printSameNumbers(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) {
    let sameNumbers = compareSameNumbers(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)
    if sameNumbers.count > 0 {
        var StringSameNumbers = [String]()
        for num in sameNumbers {
            StringSameNumbers.append(String(num))
        }
        StringSameNumbers.sort()
        print("축하합니다! 겹치는 번호는 \(StringSameNumbers.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let lottoNumbers = pickLottoNumbers()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

printSameNumbers(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)

