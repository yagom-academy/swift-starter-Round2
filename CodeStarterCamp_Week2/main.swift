//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


import Foundation

func makeLottoNumbers() -> [Int] {
    var lottoNumbers: Set<Int> = Set<Int>()

    while lottoNumbers.count < 6 {
        let numberPick = Int.random(in: 1...45)
        lottoNumbers.insert(numberPick)
    }
    return Array(lottoNumbers)
}

func checkSameNumber() {
    var sameNumbers: Array<Int> = Array<Int>()
    
    for number in myLottoNumbers {
        if winnersNumber.contains(number) == true {
            sameNumbers.append(number)
        }
    }
    
    if sameNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(sameNumbers)입니다!")
    } else if sameNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let winnersNumber = makeLottoNumbers()

print("내 로또 번호: \(myLottoNumbers)")
print("당첨 번호: \(winnersNumber)")

checkSameNumber()
