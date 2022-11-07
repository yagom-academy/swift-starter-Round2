//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func creatRandomNumber() -> Set<Int> {
    var result: Set<Int> = Set()
    while result.count < 6 {
        let value = Int.random(in: 1...45)
        result.insert(value)
    }
    return result
}

func checkLottoNumbers(_ myLottoNumbers: Set<Int>) {
    let lottoNumbers: Set<Int> = [2, 3, 6, 19, 36, 39]
    var winningNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    print(winningNumbers)
    
    var winningString = ""
    if winningNumbers.count > 0 {
        winningString += "축하합니다! 겹치는 번호는 "
        for numberValue in winningNumbers {
            winningString += "\(numberValue) "
        }
        winningString += "입니다!"
    } else {
        winningString = "아쉽지만 겹치는 번호가 없습니다."
    }
    
    print(winningString)
}

let myLottoNumbers = creatRandomNumber()
print(myLottoNumbers)
checkLottoNumbers(myLottoNumbers)
