//
//  Week2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by mingmac on 2022/04/26.
//

import Foundation

func createRandomLottoNumbers() -> Set<Int> {
    var setOfLottoNumber: Set<Int> = Set<Int>()
    while setOfLottoNumber.count < 6 {
        let lottoNumber: Int = Int.random(in: 1...45)
        setOfLottoNumber.insert(lottoNumber)
    }
    return setOfLottoNumber
}

func checkInterserctionNumbers(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) -> Set<Int> {
    let intersectionSet = lottoNumbers.intersection(Set(myLottoNumbers))
    return intersectionSet
}

func showIntersectionNumbers() {
    print("랜덤으로 생성된 숫자 : \(randomNumbers)")
    print("내가 고른 숫자 : \(myLottoNumbers)")
    let intersectionNumbers = checkInterserctionNumbers(lottoNumbers: randomNumbers, myLottoNumbers: myLottoNumbers)
    if intersectionNumbers.isEmpty {
        print("아쉽게도 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for intersectionNumber in intersectionNumbers {
            print("\(intersectionNumber)", terminator: " ")
        }
        print("입니다!")
        
    }
}
