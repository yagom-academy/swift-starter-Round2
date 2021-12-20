//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createWinnigNumbers() -> Set<Int>{
    var numbers : Set<Int> = Set<Int>()
    
    repeat {
        numbers.insert(Int.random(in: 1...45))
    }while numbers.count < 6
    
    return numbers
}

func compare(myLottoNumbers:[Int]) {
    let winningNumbers: Set<Int> = createWinnigNumbers()
    var resultNumbers = [Int]()
    
    for i in 0...5 {
        if winningNumbers.contains(myLottoNumbers[i]) {
            resultNumbers.append(myLottoNumbers[i])
        }
    }
    
    if resultNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(resultNumbers)입니다!")
    }else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [3,8,10,15,13,22]

compare(myLottoNumbers: myLottoNumbers)
