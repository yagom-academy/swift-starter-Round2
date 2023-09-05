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

var winningNumbers: [Int] = generateLottoNumbers()

print("로또당첨번호는 \(convertArray(arr: winningNumbers))입니다")


func confirmWinningLotto() {
    var myWinningNumbers: [Int] = []

    for number in myLottoNumbers {
        if winningNumbers.contains(number) {
            myWinningNumbers.append(number)
        }
    }

    if myWinningNumbers.isEmpty {
        // myWinningNumbers.isEmpty() --> myWinningNumbers.count == 0
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(convertArray(arr:  myWinningNumbers.sorted()))입니다!")
    }
}

var myLottoNumbers: [Int] = [13, 10, 6, 37, 24, 45] // 나의 로또번호 입력

func convertArray(arr: [Int]) -> String {
    let strArray: [String] = arr.map( {String($0)} )
    let resultStr: String = strArray.joined(separator: ", ")
    return resultStr
}

confirmWinningLotto()

