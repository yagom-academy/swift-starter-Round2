//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var randomNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: Set<Int> = [1,20,25,30,39,44]
var printNumber = [Int]()
var countNumber = 0

func printLotto(){
    checkNumbers()
    if countNumber == 0{
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다 ! 겹치는 번호는 \(printNumber) 입니다 !")
    }
}

func checkNumbers(){
    makeRandom()
    for randomIndex in randomNumbers{
        for myNumberIndex in myLottoNumbers{
            if randomIndex == myNumberIndex {
                countNumber = countNumber + 1
                printNumber.append(randomIndex)
            }
        }
    }
}

func makeRandom(){
    for _ in 0..<6{
        randomNumbers.insert(Int.random(in: 1...45))
    }
}

printLotto()
