//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by SeokKi Kwon on 2024/01/10.
//

import Foundation

//let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//
//func makeLottoNumber() -> [Int] {
//    let lottoNumbers: [Int] = Array(1...45)
//    var lottoResults: [Int] = []
//    repeat {
//        let lottoNumber = lottoNumbers.randomElement()!
//        if !lottoResults.contains(lottoNumber) {
//            lottoResults.append(lottoNumber)
//        }
//    } while lottoResults.count < 6
//    return lottoResults
//}
//
//func compareLottoNumber(myLottoNumbers: [Int], lottoNumbers: [Int]) {
//    let commonNumbers = Set(myLottoNumbers).intersection(Set(lottoNumbers))
//    if commonNumbers.count != 0 {
//        print("축하합니다! 겹치는 번호는 \(commonNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
//    } else {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    }
//}
//
//let lottoNumbers = makeLottoNumber()
//
//compareLottoNumber(myLottoNumbers: myLottoNumbers, lottoNumbers: lottoNumbers)
