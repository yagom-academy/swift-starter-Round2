//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNum: Set<Int> = []

func pickLottoNumUp () {
    var count: Int = 0
    while count < 6 {
        let randomNum: Int = Int.random(in: 1...45)
        if lottoNum.contains(randomNum) {
        } else {
            lottoNum.insert(randomNum)
            count = count + 1
        }
    }
}

func matchLottoNum() -> Array<Int> {
    let match = lottoNum.intersection(myLottoNumbers)
    let matchArr = Array(match)
    return matchArr
}

func printMatch(match: Array<Int>) {
        if match == [] {
            print("아쉽지만 겹치는 번호가 없습니다")
        } else {
            let matchString = match.map({ (number: Int) -> (String) in return "\(number)" })
            let matchToPrint = matchString.joined(separator: ", ")
            print("축하합니다! 겹치는 번호는 \(matchToPrint) 입니다")
        }
    }

let myLottoNumbers: Set<Int> = [1, 8, 10, 23, 44, 36]

pickLottoNumUp()
print("로또 번호: \(lottoNum)")
printMatch(match: matchLottoNum())

