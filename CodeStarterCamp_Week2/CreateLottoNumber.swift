//
//  CreateLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by Seokjune Hong on 2021/12/22.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
var intersectionLottoNumber: Set<Int> = Set<Int>()
var lottoNumbersGroup: [String: Any] = [:]
var lottoRoundCount: Int = 0

func createLottoNumber() -> Set<Int> {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func printIntersectionLottoNumber(selectedLottoNumber: [Int]) {
    intersectionLottoNumber = createLottoNumber().intersection(selectedLottoNumber)
    var transformIntersectionLottoNumber: Array<String> = Array<String>()
    
    for transformIntToString in intersectionLottoNumber {
        transformIntersectionLottoNumber.append("\(transformIntToString)")
    }
    
    if intersectionLottoNumber.count > 0 {
        print("축하합니다! 겹치는 번호는 \((transformIntersectionLottoNumber.sorted()).joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func saveLottoNumbers() {
    lottoRoundCount += 1
    createLottoNumber()
    lottoNumbersGroup["\(lottoRoundCount)회차"] = lottoNumbers.sorted()
    lottoNumbers.removeAll()
}

func loadLottoNumbersInLottoNumbersGroup(roundLottoNumber: Int) {
    if let loadedLottoNumbers = lottoNumbersGroup["\(roundLottoNumber)회차"] as? Array<Int> {
        var transformLottoNumber: Array<String> = Array<String>()
        
        for transformIntToString in loadedLottoNumbers {
            transformLottoNumber.append("\(transformIntToString)")
        }
        print("\(roundLottoNumber)회차의 로또 당첨 번호는 \(transformLottoNumber.joined(separator: ", ")) 입니다.")
    } else {
        print("lottoNumbersGroup[\(roundLottoNumber)회차] is nil")
    }
}
