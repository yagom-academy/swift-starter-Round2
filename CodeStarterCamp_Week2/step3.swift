//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Hyejeong Jeong on 2022/10/27.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var winLottoNumbers: Set<Int> = []
    
    while winLottoNumbers.count < 6 {
        winLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return winLottoNumbers
}


func saveLottoNumbers() -> Dictionary<String, [Int]> {
    var lottoList: Dictionary<String, [Int]> = [String: [Int]]()
    
    for round in 1...5 {
        lottoList["\(round)회차"] = Array(createLottoNumbers())
    }
    
    return lottoList
}


func printLottoNumbers(range: [Int]) {
    for i in range {
        if i != range[range.count - 1] {
            print(i, terminator: ", ")
        } else {
            print(i, terminator: " ")
        }
    }
}


func searchLottoNumbers(round: Int) {
    let lottoList: Dictionary<String, [Int]> = saveLottoNumbers()
    let lottoRound = "\(round)회차"
    
    if let result = lottoList[lottoRound] {
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        printLottoNumbers(range: result.sorted())
        print("입니다.")
    } else {
        print("\(round)회차 내용이 없습니다.")
    }
}
