//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
var Number: Set<Int> = []
var sameNumber: [Int] = []
func printLottoNumber() -> Set<Int> {
    while Number.count < 6 {
        Number.insert(Int.random(in: 1...45))
    }
    return Number
}
let realLottoNumbers: Set<Int> = printLottoNumber()

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func checksameNumbers() {
    for myChoice in myLottoNumbers {
        for lottoChoice in realLottoNumbers {
            if myChoice == lottoChoice {
                sameNumber.append(myChoice)
            }
        }
    }
    if sameNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는\(sameNumber.sorted()) 입니다!")
    }
}

checksameNumbers()
var savedLottoRecord : Dictionary<String,[Int]> = [:]

func createLottoNumber(totalLottonumber: Int) {
    for n in 1...totalLottonumber {
        savedLottoRecord["\(n)회차"] = printLottoNumber().sorted()
    }
}
func findLottoNumber(round: Int) {
    if let lottoNumbers: [Int] = savedLottoRecord["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers)입니다.")
    }
}
createLottoNumber(totalLottonumber: 5 )
findLottoNumber(round: 3)
