//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winLottoNumbers: [Int] = []
var myWinLottoNumbers: [Int] = []

makeLottoNumbers()
checkNumbers()

func makeLottoNumbers() {
    while winLottoNumbers.count < 6 {
        let winNumber = Int(arc4random_uniform(45) + 1)
        
        if !winLottoNumbers.contains(winNumber) {
            winLottoNumbers.append(winNumber)
        }
    }
}

func checkNumbers() {
    for count in 0...5 {
        for _count in 0...5 {
            if myLottoNumbers[count] == winLottoNumbers[_count] {
                myWinLottoNumbers.append(myLottoNumbers[count])
            }
        }
    }
    if myWinLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for count in 0...myWinLottoNumbers.count-1 {
            count < myWinLottoNumbers.count-1 ? print("\(myWinLottoNumbers[count])", terminator: ", ") : print("\(myWinLottoNumbers[count])", terminator: " ")
        }
        print("입니다!")
    }
}
