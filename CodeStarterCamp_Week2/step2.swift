//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Dawn on 2023/03/02.
//

import Foundation

func pickLottoNumber() -> Set<Int> {
    var pickedLottoNumbers: Set<Int> = Set<Int>()
    
    while pickedLottoNumbers.count < 6 {
        pickedLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return pickedLottoNumbers
}

func checkLottoNumbers(to myLottoNumbers: [Int]) {
    let overlapNumber: [Int] = pickLottoNumber().intersection(myLottoNumbers).sorted()

    if overlapNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for index in 0...overlapNumber.count - 1 {
            if index == overlapNumber.count - 1 { // 겹치는 마지막 로또 번호일 경우
                print("\(overlapNumber[index])", terminator: "")
            } else {
                print("\(overlapNumber[index])", terminator: ", ")
            }
        }
        
        print(" 입니다!")
    }
}
