//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/21.
//

import Foundation

func makeWinningNumbers() -> Set<Int>{
    var lottoNumbersSet = Set<Int>()
    while lottoNumbersSet.count < 6 {
        lottoNumbersSet.insert(Int.random(in:1...45))
    }
    return lottoNumbersSet
}

func lottoDictionary(lottoNumbers: Set<Int>) -> Dictionary<String, Set<Int>> {
    var lottoDictionary = [String: Set<Int>]()
    lottoDictionary["1회차"] = lottoNumbers
    return lottoDictionary
}
       

//func 
//func printResult(sameLottoNumbers: Set<Int>) {
//    if sameLottoNumbers.count > 0 {
//        print("축하합니다! 겹치는 번호는", terminator: " ")
//        var sameLottoNumbersString = String()
//        for stringArray in sameLottoNumbers {
//            sameLottoNumbersString += String(stringArray) + ","
//        }
//        sameLottoNumbersString.removeLast()
//
//        print(sameLottoNumbersString, terminator: " ")
//        print("입니다!")
//    } else {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    }
//}
