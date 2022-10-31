//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumber() -> [Int] {
    var numbers = Set<Int>()
    
    while numbers.count < 6 {
        numbers.insert(Int.random(in: 1...45))
    }
    
    return Array(numbers)
}

func checkCorrectNumber(myLottoNum: [Int], lottoNum: [Int]) -> [Int] {
    var corretNumber: [Int] = []
    
    for number in lottoNum {
        if myLottoNum.contains(number) {
            corretNumber.append(number)
        }
    }
    
    return corretNumber.sorted()
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let randomLottoNumbers = makeLottoNumber()
var correctNumber: [Int] = checkCorrectNumber(myLottoNum: myLottoNumbers, lottoNum: randomLottoNumbers)

if correctNumber.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    //축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!
    print("축하합니다! 겹치는 번호는", terminator: " ")
    for number in correctNumber {
        if correctNumber.last != number {
            print("\(number)", terminator: ", ")
        }
        else {
            print("\(number)", terminator: " ")
        }
    }
    print("입니다!")
}
