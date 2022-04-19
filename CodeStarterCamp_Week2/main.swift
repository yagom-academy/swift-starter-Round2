//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

func createLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    var index: Int = 0

    while index < 6 {
        let randNum: Int = Int(arc4random_uniform(45)) + 1

        if lottoNumbers.firstIndex(of: randNum) == nil {
            lottoNumbers.append(randNum)
            index = index + 1
        }
    }

    return lottoNumbers
}

func confirmLottoNumbers(_ myLottoNumbers:[Int], _ createdLottoNumbers:[Int]) -> String {
    let winNumbers: [Int] = myLottoNumbers.filter{createdLottoNumbers.contains($0)}
    
    if winNumbers.count > 0 {
        return "축하합니다. 겹치는 번호는 \(winNumbers.map{String($0)}.joined(separator: ", ")) 입니다"
    } else {
        return "아쉽지만 겹치는 번호가 없습니다."
    }

}

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

print(confirmLottoNumbers(myLottoNumbers, createLottoNumbers()))

