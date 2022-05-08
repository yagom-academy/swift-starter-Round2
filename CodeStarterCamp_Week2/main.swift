//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoSet: Set<Int> = Set<Int>()
var lottoDictionary = [String: Set<Int>]()

func makeNumber() -> Int {
    let random = Int.random(in: 1 ... 45)
    return random
}

func makeLottoSet(){
    while lottoSet.count < 6 {
        lottoSet.insert(makeNumber())
    }
    let count: Int = lottoDictionary.count
    lottoDictionary["\(count + 1)회차"] = lottoSet
    lottoSet = []
}

func checkLotto(lottoNum: Set<Int>, myNum: Array<Int>) {
    let intersection: Set<Int> = lottoNum.intersection(myNum)
    if intersection == [] {
        print("아쉽지만 일치하는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for count in intersection {
            print(count, terminator: " ")
        }
        print("입니다.")
    }
}

func printLottoRound(round: Int) {
    for (key, value) in lottoDictionary {
        if key == "\(round)회차"{
            print("\(key)의 로또 당첨 번호는 \(value) 입니다.")
        }
    }
}

makeLottoSet()
makeLottoSet()
makeLottoSet()
makeLottoSet()
makeLottoSet()

printLottoRound(round: 2)


// checkLotto(lottoNum: lottoSet, myNum: myLottoNumbers)
// print(lottoDictionary)
