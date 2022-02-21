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
var printNumber: String = ""
var printArray = [Int]()
var countNumber = 0

func printLotto(){
    checkNumbers()
    if countNumber == 0{
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다 ! 겹치는 번호는\(printNumber.dropFirst()) 입니다 !")
    }
}

func checkNumbers(){
    makeRandom()
    for randomIndex in printArray{
        if myLottoNumbers.contains(randomIndex){
            countNumber += 1
            printNumber += ", \(String(randomIndex))"
        }
    }
}

func makeRandom(){
    while randomNumbers.count < 6{
        randomNumbers.insert(Int.random(in: 1...45))
    }
    for randomIndex in randomNumbers.sorted(){
        printArray.append(randomIndex)
    }    
}


printLotto()
