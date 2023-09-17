//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yaho.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        if !lottoNumbers.contains(number) {
            lottoNumbers.append(number)
        }
    }
    return lottoNumbers.sorted()
}

func convertToArray(arr: [Int]) -> String {
    let stringArray = arr.map( {String($0)} )
    let resultString = stringArray.joined(separator: ", ")
    return resultString
}

func insertLottoNumbers() {
    i += 1
    let winningNumbersValue = generateLottoNumbers()
    print("\(i)회차의 로또 당첨 번호는 \(winningNumbersValue)입니다.")
    lottoNumbers["\(i)회차"] = winningNumbersValue
}

func buildLottoNumbers(n : Int) {
    for _ in 1...n {
        insertLottoNumbers()
    }
}

func printLottoNumbers(n: Int) {
    if let nthNumbers = lottoNumbers["\(n)회차"]{
        print("\(n)회차의 로또 당첨 번호는 \(convertToArray(arr: nthNumbers.sorted()))입니다.")
    }
}

var lottoNumbers : [String : [Int]] = [ : ]
var i = 0

buildLottoNumbers(n: 5)
print(lottoNumbers)

printLottoNumbers(n: 5)
