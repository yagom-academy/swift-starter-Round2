//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myNumber: [Int] = [14, 25, 12, 15, 2, 6] // 내가 선택한 6개의 당첨번호
for _ in 0...4 {
    compareLottoNumber(myNumber, with: makeLottoNumber())
}//로또 추첨

if let numbers = lottoResults["2회차"] {
    var winningNumber = String(numbers[0])
    for index in 1...numbers.count - 1 {
        winningNumber = winningNumber + "," + String(numbers[index])
    }
    print("2회차의 로또 당첨 번호는 \(winningNumber) 입니다.")
} else {
    print("원하는 회차의 기록이 없습니다.")
}
