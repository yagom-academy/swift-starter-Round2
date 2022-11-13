//
//  main.swift
//  week2 step3
//
//  Created by Jinah Park on 2022/11/13.
//

import Foundation

func makeLottoNumber() -> Array<Int> {
    var lottoNumbers: [Int] = []
    while true {
        if lottoNumbers.count == 6 {
            break
        }
        let number = Int.random(in: 1...45)
        if lottoNumbers.contains(number) {
            continue
        } else {
            if lottoNumbers.count < 6 {
                lottoNumbers.append(number)
            }
        }
    }
    return lottoNumbers
}

func storeLottoNumber() -> Dictionary<Int, Array<Int>> {
    var lottoDictionary: [Int:Array<Int>] = [:]
    for i in 1...5 {
        lottoDictionary[i] = makeLottoNumber()
    }
    
    return lottoDictionary
    
}

func printLottoNumber(round:Int) {
    var lottoDictionary = storeLottoNumber()
    if let lottoDictionary = lottoDictionary[round] {
        var thisLottoNumber = lottoDictionary[round].map{String($0)}.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(thisLottoNumber) 입니다.")
    } else {
        print("해당 회차가 없습니다.")
    }
}


printLottoNumber(round: 3)
