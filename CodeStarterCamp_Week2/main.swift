//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 7, 8, 9, 21, 31]

func generateLottoNumbers() -> Set<Int> {
    var generateNumbers: Set<Int> = []
    
    while generateNumbers.count < 6 {
//        print(generateNumbers.count)
        generateNumbers.insert(Int.random(in: 1...45))
//        print(generateNumbers)
    }
    return(generateNumbers)
}

func compareWithMyNumbers(generatedLottoNumbers: Set<Int>) {

    print(myLottoNumbers)
    print(generatedLottoNumbers)
    
    let winningNumbers: Array<Int> = Array(generatedLottoNumbers.intersection(myLottoNumbers)).sorted()
    
    if winningNumbers.count > 0 {
        print("축하합니다. 겹치는 번호는 ", terminator: "")
        for temp in winningNumbers {
            if temp != winningNumbers[winningNumbers.count-1] {
                print(temp, terminator: ", ")
            }
            else {
                print(temp, terminator: " ")
            }
        }
        print("입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareWithMyNumbers(generatedLottoNumbers: generateLottoNumbers())
