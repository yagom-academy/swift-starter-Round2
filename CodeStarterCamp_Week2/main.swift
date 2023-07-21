//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateUniqueNumbers(count: Int, range: ClosedRange<Int>) -> Set<Int> {
    var uniqueNumbers = Set<Int>()
    
    while uniqueNumbers.count < count {
        let randomNumber = Int.random(in: range)
        uniqueNumbers.insert(randomNumber)
    }
    
    return uniqueNumbers
}

func generateLottoNumbers() -> Set<Int> {
    return generateUniqueNumbers(count: 6, range: 1...45)
}

func compareLottoNumbers(_ choiceLottoNumbers: [Int]) {
    if choiceLottoNumbers.count != 6 {
        print("6개의 숫자를 선택해주세요.")
        return
    }
    
    if choiceLottoNumbers.contains(where: { $0 < 1 || $0 > 45 }) {
        print("1부터 45사이의 숫자를 선택해주세요.")
        return
    }
    
    let myLottoNumbers: Set<Int> = Set(choiceLottoNumbers)
    let generatedLottoNumbers: Set<Int> = generateLottoNumbers()
    
    let overrappingNumbers = myLottoNumbers.intersection(generatedLottoNumbers)
    
    if overrappingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let overrappingNumbers = overrappingNumbers.sorted()
        let result = overrappingNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    }
}

let mySelectedLottoNumbers: [Int] = [4, 10, 20, 27, 34, 40]
compareLottoNumbers(mySelectedLottoNumbers)


