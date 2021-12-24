//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = []
var randomNumber: Int?
var myLottoNumbers: [Int] = []
var matchedNumbers: String = ""
var result: String = ""
var lottoHistory: Dictionary<String, Set<Int>> = [:]
var lottoHistoryCount: Int = 0


func pickRandomNumber() {
    randomNumber = Int.random(in: 1...45)
}

func pickLottoNumbers() -> Set<Int> {
    
    while lottoNumbers.count < 7 {
        pickRandomNumber()
        if let lottoNumber = randomNumber {
            lottoNumbers.insert(lottoNumber)
        } else {
            print("wrong input")
            break
        }
    }
    print("당첨 번호: \(lottoNumbers)")
    lottoHistoryCount += 1
    lottoHistory["\(lottoHistoryCount)회차"] = lottoNumbers
    return lottoNumbers
}

func compareLottoNumbers(_ lottoNumbers: Set<Int>, _ myLottoNumbers: [Int]) -> String {
    
    if (myLottoNumbers.count < 1) {
        result = "로또 번호를 입력하지 않았습니다."
        return result
    } else {
    
        for i in 0...myLottoNumbers.count-1 {
            if (lottoNumbers.contains(myLottoNumbers[i])) {
                matchedNumbers += "\(myLottoNumbers[i]), "
            } else {
                continue
            }
        }
        let lastComma = matchedNumbers.lastIndex(of: ",") ?? matchedNumbers.endIndex
        let removeCommaNumbers = matchedNumbers[..<lastComma]
        if (matchedNumbers.count > 0) {
            result = "축하합니다! 겹치는 번호는 \(removeCommaNumbers) 입니다!"
        } else {
            result = "아쉽지만 겹치는 번호가 없습니다."
        }
        
        return result
    }
}

func tryLotto(_ myLottoNumbers: [Int]) {
    print(compareLottoNumbers(pickLottoNumbers(), myLottoNumbers))
}

tryLotto([1, 2, 3, 4, 5, 6])








