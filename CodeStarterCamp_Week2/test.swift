//
//  test.swift
//  CodeStarterCamp_Week2
//
//  Created by 김성민 on 10/12/23.
//

import Foundation


func makeLottoNumbers() -> [Int] {
    let initNumbers = Array(1...45)
    let lottoNumbers = initNumbers.shuffled()[0...5].sorted()
    
    return lottoNumbers
}

func provideInformation() -> (Set<Int>, Set<Int>) {
    let myLottoNumbers: [Int] = [2, 3, 11, 21, 30, 43]
    
    let lottNumberSet = Set<Int>(makeLottoNumbers())
    let myLottoNumberSet = Set<Int>(myLottoNumbers)
    
    let lottoNumbersString = lottNumberSet.sorted().map { String($0) }.joined(separator: ", ")
    let myLottoNumbersString = myLottoNumbers.sorted().map { String($0) }.joined(separator: ", ")
    
    print("이번 주 로또 번호는 \(lottoNumbersString) 입니다.")
    print("당신이 선택한 번호는 \(myLottoNumbersString) 입니다.")
    
    return (lottNumberSet, myLottoNumberSet)
}

func checkOverlappingNumbers() {
    let overlappingNumbers = provideInformation().0.intersection(provideInformation().1)
    let overlappingNumbersString = overlappingNumbers.sorted().map {String($0)}.joined(separator: ", ")

    switch overlappingNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1..<7:
        print("축하합니다! 겹치는 번호는 \(overlappingNumbersString) 입니다!")
    default:
        print("unknown")
    }
}


