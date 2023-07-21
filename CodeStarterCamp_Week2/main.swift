//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumber() -> Set<Int> {
    var numbers: Set<Int> = []
    var inserted: Bool
    
    for _ in 1...6 {
        repeat {
            let random = Int.random(in: 1...45)
            inserted = numbers.insert(random).0
        } while inserted == false
    }
    return numbers
}

let myLottoNumbers: [Int] = [1, 6, 12, 15, 23, 45]
let winningNumber = makeLottoNumber()
//print("make : \(winningNumber)")
//print("my : \(myLottoNumbers)")
let result = winningNumber.intersection(myLottoNumbers).sorted().map { String($0) }.joined(separator:", ")
if result.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
else {
    print("축하합니다! 겹치는 번호는 \(result) 입니다.")
}
