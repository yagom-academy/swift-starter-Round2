//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by suyeon park on 2023/03/07.
//

import Foundation

var index = 0
var beforeLottoNumbers = Dictionary<Int, [Int]>()

func saveLottoNumbers(lottoNumbers: Set<Int>) {
    
    index = index + 1
    
    beforeLottoNumbers.updateValue(lottoNumbers.sorted(), forKey: index)
}

func printBeforeLottoNumbers(beforeTurn: Int) {
    let lottoNumbers = beforeLottoNumbers[beforeTurn]

    if let lottoNumbers = lottoNumbers {
        print("\(beforeTurn)회차의 로또 당첨 번호는 ", terminator: "")
        
        for index in 0...(lottoNumbers.count-1) {
            if index == 0 {
                print("\(lottoNumbers[index])", terminator: "")
            } else {
                print(", \(lottoNumbers[index])", terminator: "")
            }
        }
        
        print(" 입니다!")
    } else {
        print("이전 회차를 찾을 수 없습니다.")
    }
}
