//
//  STEP3.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseok on 2022/04/23.
//

import Foundation

func generateLottoArray () -> Array<Int> {
    var lottoSet: Set<Int> = Set<Int> ()
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<46))
    }
    return Array<Int>(lottoSet)
}

func generateLottoDictionary () -> Dictionary<Int, Array<Int>> {
    var lottoDictionary: Dictionary<Int, Array> = [Int: Array<Int>]()
    for lottoRound in 1...5 {
        lottoDictionary[lottoRound] = generateLottoArray()
    }
    return lottoDictionary
}

func convertArray(array: [Int]) -> [String] {
     var convertedArray: [String] = []
     for numbers in array {
       convertedArray.append(String(numbers))
     }
     return convertedArray
}

func getLottoRound (round: Int) {
    let lottoDict : Dictionary<Int,Array<Int>> = generateLottoDictionary()
    if let sample = lottoDict[round] {
        let printArray = convertArray(array: sample)
        print("\(round)회차의 로또 당첨 번호는 \(printArray.joined(separator: ", ")) 입니다.")
    }
}

