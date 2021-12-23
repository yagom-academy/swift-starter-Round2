//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbersSet(lottoDictionary: inout Dictionary<String, Array<Int>>) -> Set<Int> {
    var lottoNumbersSet: Set<Int> = Set<Int>()
    repeat {
        lottoNumbersSet.insert(Int.random(in: 1...45))
    } while lottoNumbersSet.count < 6
    var lottoNumbersArray: Array<Int> = Array(lottoNumbersSet)
    saveLotto(lottoNumbersArray: lottoNumbersArray, lottoDictionary: &lottoDictionary)
    return lottoNumbersSet
}


func saveLotto(lottoNumbersArray: Array<Int>, lottoDictionary: inout Dictionary<String, Array<Int>> ) ->Void {
    var keyString: String = "\(lottoDictionary.count+1)회차"
    lottoDictionary[keyString] = lottoNumbersArray
}

var lottoDictionary: Dictionary<String, Array<Int>> = Dictionary<String, Array<Int>>()

// STEP 2
//var lottoNumbersSet: Set<Int> = makeLottoNumbersSet(lottoDictionary: &lottoDictionary)
//
//var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//var myLottoNumbersSet: Set<Int> = Set(myLottoNumbers)
//
//var intersectNumbers: Set<Int> = myLottoNumbersSet.intersection(lottoNumbersSet)
//var intersect: [Int] = intersectNumbers.sorted()
//
//
//
//if intersect.count == 0 {
//    print("아쉽지만 겹치는 번호가 없습니다.")
//} else if intersect.count == 1 {
//    print("축하합니다! 겹치는 번호는 \(intersect[0]) 입니다.")
//} else {
//    print("축하합니다! 겹치는 번호는 \(intersect[0])", terminator: "")
//    for index in 1...intersect.count-1 {
//        print(", \(intersect[index])", terminator: "")
//    }
//    print(" 입니다!")
//}

// STEP 3
for _ in 1...5 {
    var lottoNumbersSet: Set<Int> = makeLottoNumbersSet(lottoDictionary: &lottoDictionary)
}
var lottoNumbers2: Array<Int> = lottoDictionary["2회차"]!
print("2회차의 로또 당첨 번호는 \(lottoNumbers2[0]) ", terminator: "")
for index in 1...5 {
    print("\(lottoNumbers2[index]) ", terminator: "")
}
print("입니다.")
