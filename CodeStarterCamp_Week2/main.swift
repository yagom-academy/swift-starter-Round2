//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

func checkLottoResult() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var resultNumbers: Array<Int> = []

    for number in generateLottoNumbers() {
        if myLottoNumbers.contains(number) {
            resultNumbers.append(number)
        }
    }
    
    if resultNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let lottoResult = resultNumbers.map({ (value: Int) -> String in return String(value) }).joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(lottoResult) 입니다!")
    }
}

checkLottoResult()
