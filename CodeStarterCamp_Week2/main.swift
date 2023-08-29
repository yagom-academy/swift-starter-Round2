//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3,8,15,31,44]

func makeWinningNumbers() -> Array<Int> {
    var lottery: [Int] = []
    
    while lottery.count < 6 {
        let newNumber = Int.random(in: 1...45)
        if !lottery.contains(newNumber){
            lottery.append(newNumber)
        }
    }
    return lottery
}

func checkLottery(myNums: Array<Int>) {
    let winningNumbers = Set(makeWinningNumbers()).intersection(Set(myLottoNumbers))
    let winningList = winningNumbers.map{ String($0) }
    
    if winningList.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        print(winningList.joined(separator: ","), terminator: "")
        print("입니다!")
    }
}

checkLottery(myNums: myLottoNumbers)
