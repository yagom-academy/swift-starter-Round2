//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers = [1, 2, 3, 4, 5, 6]

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    var number: Int
    
    while lottoNumbers.count < 6 {
        number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
    
    return lottoNumbers
}

func checkSameNumbers(myLottoNumbers: [Int], lottoNumbers: Set<Int>) {
    let sameNumbers: Set<Int> = lottoNumbers.intersection(Set(myLottoNumbers))
    let sortedSameNumbers = sameNumbers.sorted()
    var array = [[1,2], [2,3]].joined()
    print(array)
    if !sortedSameNumbers.isEmpty {
        print("축하합니다! 겹치는 번호는 \(sortedSameNumbers.map{ String($0) }.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkSameNumbers(myLottoNumbers: myLottoNumbers, lottoNumbers: createLottoNumbers())
