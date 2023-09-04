//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3,8,15,16,31,44]
var pastWinningNumbers: [String: [Int]] = [:]

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

func checkLottery(_: Array<Int>) {
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

func savePastWinningNumbers(theNumbers: Array<Int>) {
    let arrayFromKeys = Array(pastWinningNumbers.keys)
    
    if arrayFromKeys.isEmpty {
        pastWinningNumbers["1회차"] = theNumbers
    } else {
        let sortedArrayFromKeys = arrayFromKeys.sorted()
        let lastTurn: String = sortedArrayFromKeys.last ?? "0회차"
        let thisTurn = (Int(lastTurn.prefix(1)) ?? 0) + 1
        let thisTurnKey = String(thisTurn) + "회차"
        pastWinningNumbers[String(thisTurnKey)] = theNumbers
    }
}

for _ in 1...5 {
    let theNumbers = makeWinningNumbers()
    savePastWinningNumbers(theNumbers: theNumbers)
}

let pastRound: String = "2회차"
let win = pastWinningNumbers[pastRound] ?? [0]
let winningNums = win.map{ String($0) }

print("\(pastRound)의 로또 당첨 번호는 ", terminator: "")
print(winningNums.joined(separator: ", "), terminator: " ")
print("입니다.")
