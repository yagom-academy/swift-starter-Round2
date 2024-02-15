//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//



let myLottoNumbers: [Int] = [3, 17, 23, 28, 31, 45]
let winningNumbers: Set<Int> = drawRandomNumber()

checkWinning(compareWith: winningNumbers, from: myLottoNumbers)

func drawRandomNumber() -> Set<Int> {
    return Set((1...45).shuffled().prefix(6))
}

func checkWinning(compareWith winningNumbers: Set<Int>, from myNumbers: [Int]) {
    let matchingNumbers = winningNumbers.intersection(myNumbers)
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers.map({ String($0) }).joined(separator: ", ")) 입니다!")
    }
}
