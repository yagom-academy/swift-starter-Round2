//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLotto() -> [Int] {
    var randomLotto: [Int] = []

    while randomLotto.count != 6 {
        let randomNumber = Int.random(in: 1...45)
        if randomLotto.contains(randomNumber) {
            continue
        } else {
            randomLotto.append(randomNumber)
        }
    }

    return randomLotto
}

func checkLotto(myLotto: [Int], prizeLotto: [Int]) -> [Int] {
    var duplicateNumbers: [Int] = []

    for myLottoNumber in myLotto {
        if prizeLotto.contains(myLottoNumber) {
            duplicateNumbers.append(myLottoNumber)
        }
    }
    
    return duplicateNumbers
}

func showResult(duplicateNumbers: [Int]) {
    if duplicateNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(duplicateNumbers.map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let prizeLottoNumbers: [Int] = makeLotto()

showResult(duplicateNumbers: checkLotto(myLotto: myLottoNumbers, prizeLotto: prizeLottoNumbers))
