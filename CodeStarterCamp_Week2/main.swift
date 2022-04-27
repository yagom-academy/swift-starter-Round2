//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [6, 27, 13, 44, 35, 18]
var numbersSet: Set<Int> = Set<Int>()
var autoLottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers() -> Set<Int> {
    
    var lottoNum: Int = 0
    
    for number in 1...45 {
        numbersSet.insert(number)
    }
    
    while lottoNum > 6 {
        lottoNum += 1
        autoLottoNumbers.insert(numbersSet.randomElement() ?? 0)
    }
    
    return autoLottoNumbers
}

func compareLottoNumbers() {
    
    var matchedNumbers: [Int] = []
    
    for index in 0...myLottoNumbers.count-1 {
        if autoLottoNumbers.contains(myLottoNumbers[index]) {
            matchedNumbers.append(myLottoNumbers[index])
        }
    }
    
    switch matchedNumbers.count {
        
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
        
    case 1...autoLottoNumbers.count :
        print("축하합니다. 겹치는 번호는", terminator: "")
        
        for index in 1...matchedNumbers.count {
            if index != (matchedNumbers.count - 1) {
                print(matchedNumbers[index], terminator: ", ")
            } else {
                print(matchedNumbers[index], terminator: "")
            }
        }
        
        print(" 입니다!")
    default:
        print("unknown")
    }
}

compareLottoNumbers()
