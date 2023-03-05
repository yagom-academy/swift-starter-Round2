//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var lottoWinNumbers: Set<Int> = Set<Int>()
var lottoWinNumbersDictionary: [String: [Int]] = [:]
var count = 1

func setLottoWinNumbers() {
    lottoWinNumbers.removeAll()
    
    while lottoWinNumbers.count < 6 {
        let element = Int.random(in: 1...45)
        lottoWinNumbers.insert(element)
    }
    
    lottoWinNumbersDictionary["\(count)회차"] = lottoWinNumbers.sorted()
    count += 1
}

for _ in 1...5 {
    setLottoWinNumbers()
}

func pickTheNumbers(countNumber: Int) {
    let theNumbers = lottoWinNumbersDictionary["\(countNumber)회차"]
    if let printTheNumbers: Array<Int> = theNumbers {
        let message = printTheNumbers.map{String($0)}.joined(separator: ", ")
        print("\(countNumber)회차의 로또 당첨 번호는 \(message) 입니다.")
    }
}

print(lottoWinNumbersDictionary)
pickTheNumbers(countNumber: 2)
