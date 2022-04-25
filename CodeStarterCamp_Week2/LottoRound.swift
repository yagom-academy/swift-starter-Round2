//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation



let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var storgedLottoInfo: Dictionary<Int, Set<Int>> = [Int: Set<Int>]()


func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func checkLottoNumbers(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) {
    let sortedLottoNumbers = lottoNumbers.sorted()
    var winnedLottoNumbers: [Int] = []
    
    for number in 0...5 {
        if sortedLottoNumbers.contains(myLottoNumbers[number]) {
            winnedLottoNumbers.append(myLottoNumbers[number])
        }
    }
    
    if winnedLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let winnedLottoNumberToString = winnedLottoNumbers.map{ String($0)}
        print("축하합니다! 겹치는 번호는 \(winnedLottoNumberToString.joined(separator: ",")) 입니다!")
    }
}

func storgedLotto(lottoRound: Int) -> [Int: Set<Int>] {
    for number in 1...lottoRound {
        let round = number
        storgedLottoInfo[round] = generateLottoNumbers()
    }
    
    let sortedStorgedLottoInfo = storgedLottoInfo.sorted{ $0.0 < $1.0 }
    return storgedLottoInfo
}

func findLottoRound(findRound: Int) {
    if let printLottoInfo = storgedLottoInfo[findRound] {
        let printLottoInfoToStringValue = printLottoInfo.map { String($0) }.joined(separator: ",")
        print("\(findRound)회차의 로또 당첨 번호는 \(printLottoInfoToStringValue) 입니다.")
        
    } else {
        print("회차 정보를 올바르게 입력해주세요")
    }
}



storgedLotto(lottoRound: 5)
findLottoRound(findRound: 2)
//generateLottoNumbers()
//checkLottoNumbers(lottoNumbers: generateLottoNumbers(), myLottoNumbers: myLottoNumbers)


