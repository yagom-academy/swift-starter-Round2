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

func convertArray(arr: [Int]) -> String {
    let strArray: [String] = arr.map( {String($0)} )
    let resultStr: String = strArray.joined(separator: ", ")
    return resultStr
}

func saveNthTimeLottoNumbers() {
    i += 1
    let winningNumbersValue = generateLottoNumbers()
    print("\(i)회차의 로또 당첨 번호는 \(winningNumbersValue)입니다.")
    NthTimeLottoNumbers["\(i)회차"] = winningNumbersValue
}

var NthTimeLottoNumbers : [String : Array<Int>] = [ : ]
var i = 0

for _ in 1...5 {
    saveNthTimeLottoNumbers()
}
print(NthTimeLottoNumbers)


let n = 5
if let nthNumbers = NthTimeLottoNumbers["\(n)회차"]{
    print("\(n)회차의 로또 당첨 번호는 \(convertArray(arr: nthNumbers.sorted()))입니다.")
}
