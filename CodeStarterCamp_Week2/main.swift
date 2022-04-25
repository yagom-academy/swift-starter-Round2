//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func pickLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6{
        lottoNumbers.insert(Int.random(in: 0...46))
    }
    return lottoNumbers
}
func compareNumbers() {
    let myLootoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var myNumbers: Set<Int> = Set<Int>()
    for index in 0..<myLootoNumbers.count{
        myNumbers.insert(myLootoNumbers[index])
    }
    let intersection: Set<Int> = myNumbers.intersection(lottoNumbers)
    switch intersection.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1:
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for num in intersection {
            print(num, terminator: " ")
        }
        print("입니다!")
    default:
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var index = 1
        for num in intersection {
            if index == intersection.count {
                print(num, terminator: " ")
            }else {
                print("\(num),", terminator: " ")
            }
            index += 1
        }
        print("입니다!")
    }
}
pickLottoNumbers()
compareNumbers()
    
