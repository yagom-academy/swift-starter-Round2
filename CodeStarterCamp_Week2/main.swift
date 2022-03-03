//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersList = [String: Set<Int>]()
var lottoCount = 0

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let random = Int.random(in: 1...45)
        lottoNumbers.insert(random)
    }
    print("\(lottoNumbers) 이건로또넘버")
    lottoCount = lottoCount + 1
    lottoNumbersList["\(lottoCount)회차"] = lottoNumbers
    return lottoNumbers
}

func checkLottoNumbers() -> Set<Int> {
    let lottoNumbers = makeLottoNumbers()
    let myLottoNumbers = [23, 15, 25, 42, 5, 37]
    let winningLottoNumbers = lottoNumbers.intersection(myLottoNumbers)
    print("\(myLottoNumbers) 이건마이넘버")
    print("\(winningLottoNumbers) 이건 같은숫자")
    return winningLottoNumbers
}

func printLottoResult() {
    let winningLottoNumbers = checkLottoNumbers()
    if winningLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        let sortedNumbers = winningLottoNumbers.sorted()
        let arrayNumbers = [Int](sortedNumbers)
        let maxCount = arrayNumbers.count - 1
        if maxCount == 0 {
            print("축하합니다! 겹치는 번호는 \(arrayNumbers[0]) 입니다!")
        }
        else if maxCount > 0 {
            print("축하합니다! 겹치는 번호는 \(arrayNumbers[0])", terminator: "")
            for count in 1...maxCount {
                print(", \(arrayNumbers[count])", terminator: "")
            }
            print(" 입니다!")
        }
    }
}

//func printWinnerMessage() {
//    let winningLottoNumbers = checkLottoNumbers()
//    let sortedNumbers = winningLottoNumbers.sorted()
//    let arrayNumbers = [Int](sortedNumbers)
//    let maxCount = arrayNumbers.count - 1
//    if maxCount == 0 {
//        print("축하합니다! 겹치는 번호는 \(arrayNumbers[0]) 입니다!")
//    }
//    else if maxCount > 0 {
//        print("축하합니다! 겹치는 번호는 \(arrayNumbers[0])", terminator: "")
//        for count in 1...maxCount {
//            print(", \(arrayNumbers[count])", terminator: "")
//        }
//        print(" 입니다!")
//    }
//}

func playLotto() {
    printLottoResult()}

playLotto()
playLotto()
playLotto()
playLotto()
playLotto()
