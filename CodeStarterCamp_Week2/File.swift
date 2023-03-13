//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 이선준 on 2023/03/10.
//

//MARK: STEP2

import Foundation

func createWinningLottoNumbers() -> Set<Int> {
    var lottoNumberSet: Set<Int> = Set<Int>()
    while lottoNumberSet.count < 6 {
        lottoNumberSet.insert(Int.random(in: 1...45))
    }
    print(lottoNumberSet)
    return lottoNumberSet
}

func compareLottoNumber(_ winningLottoNumbers: Set<Int>, _ myLottoNumbers: [Int]) {
    let intersectionNumbers: Array<Int> = winningLottoNumbers.intersection(myLottoNumbers).sorted()
    
    if intersectionNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겸치는 번호는 ", terminator: "")
        
        let endIndexOfIntersection: Int = intersectionNumbers.count - 1
        for index in 0...endIndexOfIntersection {
            if index == endIndexOfIntersection {
                print("\(intersectionNumbers[index])", terminator: "")
            } else {
                print("\(intersectionNumbers[index]), ", terminator: "")
            }
        }
        print(" 입니다!")
    }
}
