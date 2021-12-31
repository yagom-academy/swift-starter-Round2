//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var selectableLottoNumbers = Set<Int>()

func assignSelectableLottoNumbers(range: Int) {
    for count in 1...range {
        selectableLottoNumbers.insert(count)
    }
}

func makeWinningLottoNumbers(number: Int) -> Set<Int> {
    assignSelectableLottoNumbers(range: 45)
    let orderedLottoNumbers = Array(selectableLottoNumbers)
    var winningLottoNumbers = Set<Int>()
    for count in 0...number {
        winningLottoNumbers.insert(orderedLottoNumbers[count])
    }
    return winningLottoNumbers
}

let orderedMyLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var myLottoNumbers: Set<Int> = Set(orderedMyLottoNumbers)

let winningNumber: Set<Int> = makeWinningLottoNumbers(number: 5).intersection(myLottoNumbers)
func checkWinningResult() {
    if winningNumber.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
    print("축하합니다! 겹치는 번호는 \(winningNumber) 입니다!")
    }
}

print(makeWinningLottoNumbers(number: 5))
print(myLottoNumbers)
print(winningNumber)
checkWinningResult()

