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
    var totalNum: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
    var lottoNum: [Int] = []
    for _ in 1...6 {
        let pickNum = totalNum.remove(at: Int.random(in: 0...44))
        lottoNum.append(pickNum)
    }
    return lottoNum
}

func checkMyLottoNum(myLottoNumbers: Array<Int>) {
    let lottoNum = makeLottoNumbers()
    var winningMyNum: [Int] = []
    for member in myLottoNumbers {
        if lottoNum.contains(member) {
            winningMyNum.append(member)
        }
    }
    if winningMyNum.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for member in winningMyNum {
            if member == winningMyNum.last {
                print("\(member) 입니다!")
            } else {
                print(member, terminator: ", ")
            }
        }
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkMyLottoNum(myLottoNumbers: myLottoNumbers)
