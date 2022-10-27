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


func saveLottoNumbers() -> Dictionary<String, Set<Int>> {
    var lottoList: Dictionary<String, Set<Int>> = [String: Set<Int>]()
    for round in 1...5 {
        lottoList["\(round)회차"] = createLottoNumbers()
    }
    return lottoList
}


func searchLottoNumbers(round: Int) {
    let searchLottoList: Dictionary<String, Set<Int>> = saveLottoNumbers()
    let lottoRound = "\(round)회차"
    
    if let result = searchLottoList[lottoRound] {
        let resultCount = result.count
        
        func removeBracket(range: [Int] = Array(result).sorted(), count: Int = resultCount) {
            for i in range {
                if i != range[count - 1] {
                    print(i, terminator: ", ")
                } else {
                    print(i, terminator: " ")
                }
            }
        }
        
        print("\(round)회차의 로또 당첨 번호는", terminator: " ")
        removeBracket()
        print("입니다.")
    } else {
        print("\(round)회차 내용이 없습니다.")
    }
}
