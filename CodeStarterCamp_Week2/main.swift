//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var selectableLottoNumbers = Set<Int>()
let orderedMyLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var myLottoNumbers: Set<Int> = Set(orderedMyLottoNumbers)
var winningNumbers: Set<Int> = makeWinningLottoNumbers().intersection(myLottoNumbers)
var orderedWinningNumbers = Array(winningNumbers)

func assignSelectableLottoNumbers() {
    for number in 1...45 {
        selectableLottoNumbers.insert(number)
    }
}
func makeWinningLottoNumbers() -> Set<Int> {
    assignSelectableLottoNumbers()
    let orederedSelectableLottoNumbers = Array(selectableLottoNumbers)
    var winningLottoNumbers = Set<Int>()
    for count in 0...5 {
        winningLottoNumbers.insert(orederedSelectableLottoNumbers[count])
    }
    return winningLottoNumbers
}
func checkWinningResult() {
    if orderedWinningNumbers.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
    } else if orderedWinningNumbers.count == 1 {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        print("\(orderedWinningNumbers[0])", terminator: " ")
        print("입니다!")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for number in 0...orderedWinningNumbers.count - 2 {
            print("\(orderedWinningNumbers[number])", terminator: ", ")
                }
        print("\(orderedWinningNumbers[orderedWinningNumbers.count - 1])", terminator: " ")
        print("입니다!")
    }
}

print(makeWinningLottoNumbers())
print(myLottoNumbers)
print(winningNumbers)
checkWinningResult()
