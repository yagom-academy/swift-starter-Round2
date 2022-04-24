//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation



let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    for _ in 0...5 {
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
//generateLottoNumbers()
checkLottoNumbers(lottoNumbers: generateLottoNumbers(), myLottoNumbers: myLottoNumbers)

