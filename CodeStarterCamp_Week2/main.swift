//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


func makeLottoNumbers() -> Set<Int> {
    var result: Set<Int> = Set<Int>()
    
    while result.count != 6 {
        result.insert(Int.random(in: 1...45))
    }
    return result
}

func checkLottoNumbers(myNumbers: Set<Int>, matching: Set<Int>) {
    let result: Set<Int> = myNumbers.intersection(matching)
    
    if result.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let sameNumbers: String = result.map {String($0)}.joined(seperator: ", ")
        print("축하합니다! 겹치는 번호는 \(sameNumbers) 입니다!")
    }
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let winningNumbers = makeLottoNumbers()
checkLottoNumbers(myNumbers: myLottoNumbers, matching: winningNumbers)

