//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

<<<<<<< HEAD
func singleLotteryNumbers() -> Set<Int> {
    var lotteryNumbers: Set<Int> = Set<Int>()
=======
func lotteryNumbers() -> Set<Int> {
    var lotteryNumbers: Set<Int> = Set<Int>()

    while lotteryNumbers.count != 6 {
        lotteryNumbers.insert(Int.random(in: 1...45))
    }
    return lotteryNumbers
}

let pickedLotteryNumbers = lotteryNumbers()
print(pickedLotteryNumbers)

var myLottoNumbers = Set<Int>()
myLottoNumbers = [1,2,3,4,5,6]

func comparingMyNumbers(from lotteryNumbers: Set<Int>,to myNumbers: Set<Int>) {
    let commonNumbers: Set<Int> = lotteryNumbers.intersection(myNumbers)
    
    if commonNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        print("축하합니다! 겹치는 번호는 ",terminator: "")
        var commonNuberInRows = String()
        for ArrangingInRow in commonNumbers {
            commonNuberInRows += String(ArrangingInRow) + ","
        }
        commonNuberInRows.removeLast()
        
        print(commonNuberInRows, terminator: "")
        print("입니다!")
    }
}

comparingMyNumbers(from: pickedLotteryNumbers, to: myLottoNumbers)


>>>>>>> step2

    while lotteryNumbers.count != 6 {
        lotteryNumbers.insert(Int.random(in: 1...45))
    }
    return lotteryNumbers
}

func lotteryNumberAllTimes(times: Int) -> [String : Set<Int>] {
    var count = 1
    var lotteryNumberEachTime = [String: Set<Int>]()
    
    while count != times + 1 {
        lotteryNumberEachTime.updateValue(singleLotteryNumbers(), forKey: "\(count)회차")
        count += 1
    }
    
    return lotteryNumberEachTime
}
let actualLotteryNumbers: [String : Set<Int>]? = lotteryNumberAllTimes(times: 5)

func checkingLotteryNumbers(round: Int) {
    if let check = actualLotteryNumbers?["\(round)회차"] {
        var printedNumberInRow = ""
        for printing in check {
            printedNumberInRow += String(printing) + ", "
        }
        printedNumberInRow.removeLast()
        print("\(round)회차의 로또 당첨 번호는 \(printedNumberInRow) 입니다.")
    }
}
checkingLotteryNumbers(round: 5)
