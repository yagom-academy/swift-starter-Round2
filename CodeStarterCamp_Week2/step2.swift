//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 한서영 on 2022/06/29.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let lottoNumber: Int = Int.random(in: 1...45)
        
        lottoNumbers.insert(lottoNumber)
    }
    
    return lottoNumbers
}

func returnSortedIntersection(lottoNumbers: Set<Int>) -> Array<Int> {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let intersection: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    let sortedIntersection: [Int] = intersection.sorted()
    
    return sortedIntersection
}

func printLotto(sortedIntersection: Array<Int>) {
    
    if sortedIntersection.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var loopCount: Int = 1
        
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for lottoNumber in sortedIntersection {
            if loopCount != sortedIntersection.count {
                print("\(lottoNumber)", terminator: ", ")
            } else {
                print("\(lottoNumber)", terminator: " ")
            }
            loopCount = loopCount+1
        }
        print("입니다!")
    }
}
