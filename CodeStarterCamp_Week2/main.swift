//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lotterySet: Set<Int> = Set<Int>()
func makeLotterySet(){
    repeat {
        let randomInt = Int.random(in: 1...45)
        lotterySet.insert(randomInt)
    } while lotterySet.count < 6
}
makeLotterySet()
print(lotterySet)

let myLottoNumbers: [Int] = [3, 5, 11, 14, 20, 26]
print(myLottoNumbers)

let intersection: Set<Int> = lotterySet.intersection(myLottoNumbers)
print(intersection)
func verifyLottoResult(){
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다 !")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
verifyLottoResult()
