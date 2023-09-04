//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yaho.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Array<Int> {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        if !lottoNumbers.contains(number) {
            lottoNumbers.append(number)
        }
    }
    return lottoNumbers.sorted()
}

var winningNumbers = generateLottoNumbers()
print("로또당첨번호는 \(winningNumbers)입니다")


func confirmWinningLotto() {
    var myWinningNumbers: [Int] = []
    
    for i in 0...5 {
        if winningNumbers.contains(myLottoNumbers[i]) {
            myWinningNumbers.append(myLottoNumbers[i])
        }
    }

    if myWinningNumbers.count >= 1 {
        print("축하합니다! 겹치는 번호는 \(myWinningNumbers.sorted())입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var myLottoNumbers: [Int] = [13, 10, 6, 37, 24, 45] // 나의 로또번호 입력

confirmWinningLotto()
