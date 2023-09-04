//
//  week2_step2.swift
//  CodeStarterCamp_Week2
//
//  Created by jjudy on 2023/09/04.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoSet: Set<Int> = Set()
    
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1...45))
    }
    
    return lottoSet
}

func checkSameLottoNumbers(myNumbers: [Int], setLottoNumbers: Set<Int>) {
    var sameNumArray: Array<Int> = [Int]()
    
    for num in myNumbers {
        if (setLottoNumbers.contains(num)) {
            sameNumArray.append(num)
        }
    }
    
    if(sameNumArray.count > 0) {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(sameNumArray.map{String($0)}.joined(separator:", "), terminator: "")
        print(" 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
    
}
