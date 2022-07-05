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
