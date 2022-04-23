//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Set<Int> {
    for _ in 0...5 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func checkLottoNumbers(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) {
    let sortLottoNumber = lottoNumbers.sorted()
    var winLottoNumbers: [Int] = []
    
    for num in 0...5 {
        if sortLottoNumber.contains(myLottoNumbers[num]) {
            winLottoNumbers.append(myLottoNumbers[num])
        }
    }
    
    if winLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var winLottoNumberToString = winLottoNumbers.map{ String($0)}
        print("축하합니다! 겹치는 번호는 \(winLottoNumberToString.joined(separator: ",")) 입니다!")
    }
}
makeLottoNumbers()
checkLottoNumbers(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)

