//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
func printLottoNumber() -> Set<Int> {
var Number: Set<Int> = []
while Number.count < 6 {
Number.insert(Int.random(in: 1...45))
}
return Number
}
let realLottoNumbers: Set<Int> = printLottoNumber()

let myLottoNumbers: Set<Int> = [1,2,3,4,5,6]

let matchedNumbers: Set<Int> = realLottoNumbers.intersection(myLottoNumbers)


func printLottoResult(matchedNumbers: [Int]) {
    switch matchedNumbers.count {
case 1:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0])입니다.")
case 2:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]) 입니다.")
case 3:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]) 입니다.")
case 4:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]) 입니다.")
case 5:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]), \(matchedNumbers[4]) 입니다.")
case 6:
    print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]), \(matchedNumbers[4]), \(matchedNumbers[5]) 입니다.")
default:
    print("아쉽지만 겹치는 번호가 없습니다.")
}
}
printLottoResult(matchedNumbers: matchedNumbers.sorted())
