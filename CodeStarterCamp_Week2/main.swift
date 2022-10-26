//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3, 7, 15, 27, 37, 41]
var winLottoNumbers: Set<Int> = []

func createLottoNumbers() {
    while winLottoNumbers.count < 6 {
        winLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func checkOverlapNumbers() {
    let overlapNumbers = Array(winLottoNumbers.intersection(myLottoNumbers).sorted())
    
    if overlapNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for removeBracket in overlapNumbers {
            if removeBracket != overlapNumbers[overlapNumbers.count - 1] {
                print(removeBracket, terminator: ", ")
            } else {
                print(removeBracket, "입니다!")
            }
        }
        
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

createLottoNumbers()
checkOverlapNumbers()
