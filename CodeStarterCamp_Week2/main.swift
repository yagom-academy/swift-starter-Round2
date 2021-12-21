//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbersSet() -> Set<Int> {
    var lottoNumbersSet: Set<Int> = Set<Int>()
    repeat {
        lottoNumbersSet.insert(Int.random(in: 1...45))
    } while lottoNumbersSet.count < 6
    return lottoNumbersSet
}

let lottoNumbers: Set<Int> = makeLottoNumbersSet()
//print("로또번호는 \(lottoNumbers) 입니다.")

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//print("제가 입력한 번호는 \(myLottoNumbers) 입니다.")
var myLottoNumbersSet: Set<Int> = Set(myLottoNumbers)

var intersectNumbers: Set<Int> = myLottoNumbersSet.intersection(lottoNumbers)
let intersect: [Int] = intersectNumbers.sorted()


if intersect.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else if intersect.count == 1 {
    print("축하합니다! 겹치는 번호는 ", terminator: "")
    print(intersect[0], terminator: " ")
    print("입니다!")
} else {
    print("축하합니다! 겹치는 번호는 ", terminator: "")
    print(intersect[0], terminator: "")
    for index in 1...intersect.count-1 {
        print(", \(intersect[index])", terminator: "")
    }
    print(" 입니다!")
}

