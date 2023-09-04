//
//  main.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/27.


// STEP2
import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumderSet: Set<Int> = []


func creationLottoNumders() -> Set<Int>{

    while lottoNumderSet.count < 6{
        let numder = Int.random(in: 1...45)
        lottoNumderSet.insert(numder)
    }
    return lottoNumderSet
}
print("당첨번호 \(creationLottoNumders())입니다.")

let overlappingLottoNumder: Set<Int> = creationLottoNumders().intersection(myLottoNumbers)


    if overlappingLottoNumder.count == 1{
        print("축하합니다! 겹치는 번호는 \(overlappingLottoNumder)입니다!")
    }else{
        print("아쉽지만 겹치는 번호가 없습니다")
    }

