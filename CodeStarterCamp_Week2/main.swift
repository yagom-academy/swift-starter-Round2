//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = []

func pickLottoNumberUp () {
    var count: Int = 0
    while count < 6 {
        let randomNumer: Int = Int.random(in: 1...45)
        if !lottoNumber.contains(randomNumer) {
            lottoNumber.insert(randomNumer)
            count = count + 1
        }
    }
}

func matchLottoNumber() -> Array<Int> {
    let match = lottoNumber.intersection(myLottoNumbers)
    let matchNumbers = Array(match)
    return matchNumbers
}

func printMatch(match: Array<Int>) {
    if match.isEmpty {
            print("아쉽지만 겹치는 번호가 없습니다")
        } else {
            let matchToPrint = convertArrayToString(someArray: match)
            print("축하합니다! 겹치는 번호는 \(matchToPrint) 입니다")
        }
    }

func convertArrayToString(someArray: Array<Int>) -> String {
    let setString = someArray.map({ (number: Int) -> (String) in return String(number) })
    let line = setString.joined(separator: ", ")
    return line
}

let myLottoNumbers: Set<Int> = [1, 8, 10, 23, 44, 36]

pickLottoNumberUp()
print("로또 번호: \(lottoNumber)")
printMatch(match: matchLottoNumber())
