//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Dawn on 2023/03/02.
//

import Foundation

func getLottoNumbers() -> Set<Int> {
    var pickedLottoNumbers: Set<Int> = Set<Int>()
    
    while pickedLottoNumbers.count < 6 {
        pickedLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return pickedLottoNumbers
}

func checkLottoNumbers(with myLottoNumbers: [Int]) {
    let winNumbers: [Int] = getLottoNumbers().intersection(myLottoNumbers).sorted()

    if winNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(winNumbers.map { String($0) } .joined(separator: ", ")) 입니다!")
    }
}
