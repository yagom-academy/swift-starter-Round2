//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Array<Int> {
    var totalNumbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
    var lottoNumbers: [Int] = []
    for count in 0...5 {
        let pickNumbers = totalNumbers.remove(at: Int.random(in: 0...(44 - count)))
        lottoNumbers.append(pickNumbers)
    }
    return lottoNumbers
}

func checkMyLottoNumbers(myLottoNumbers: Array<Int>) {
    let lottoNumbers = makeLottoNumbers()
    var winningMyNumbers: [Int] = []
    for member in myLottoNumbers {
        if lottoNumbers.contains(member) {
            winningMyNumbers.append(member)
        }
    }
    if winningMyNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for member in winningMyNumbers {
            if member == winningMyNumbers.last {
                print("\(member) 입니다!")
            } else {
                print(member, terminator: ", ")
            }
        }
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkMyLottoNumbers(myLottoNumbers: myLottoNumbers)
