//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 한서영 on 2022/06/29.
//

import Foundation

var lottoSet: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func createLotto() {
    while lottoSet.count < 6 {
        let lottoNumber: Int = Int.random(in: 1...45)
        
        lottoSet.insert(lottoNumber)
    }
}
func checkLotto() {
    let intersection: Set<Int> = lottoSet.intersection(myLottoNumbers)
    let sortedIntersection: [Int] = intersection.sorted()
    
    if sortedIntersection.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var i: Int = 1
        
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for lottoNumber in sortedIntersection {
            if i != sortedIntersection.count {
                print("\(lottoNumber)", terminator: ", ")
            } else {
                print("\(lottoNumber)", terminator: " ")
            }
            i = i+1
        }
        print("입니다!")
    }
    
}
