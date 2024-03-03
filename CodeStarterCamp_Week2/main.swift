//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//



let myLottoNumbers: Set<Int> = [7, 15, 27, 35, 37, 42]

func randomLottoNumbers() -> Set<Int> {
    var randomNumbers = Set<Int>()
    
    while randomNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        randomNumbers.insert(randomNumber)
    }
    
    return randomNumbers
}


func checkOverlap() {
    let overlappingNumbers = myLottoNumbers.intersection(randomLottoNumbers())
    
    if overlappingNumbers.count != 0  {
        print("축하합니다! 겹치는 번호는 \(overlappingNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkOverlap()


