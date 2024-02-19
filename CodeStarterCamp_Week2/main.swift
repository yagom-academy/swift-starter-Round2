//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let winningNumbers: Set<Int> = generateLottoNumbers()

checkLottoNumbers(my: myNumbers, winning: winningNumbers)

func generateLottoNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = Set<Int>()
    while (winningNumbers.count < 6 ) {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    print("이번 로또 당첨 번호는 \(winningNumbers.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
    return winningNumbers
}

func checkLottoNumbers(my myNumbers: Set<Int>, winning winningNumbers: Set<Int>) {
    let matchedNumbers: Set<Int> = winningNumbers.intersection(myNumbers)
    print("나의 로또 번호는 \(myNumbers.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
    
    if (matchedNumbers.isEmpty) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers.sorted().map{ String($0) }.joined(separator: ", ")) 입니다!")
    }
}
