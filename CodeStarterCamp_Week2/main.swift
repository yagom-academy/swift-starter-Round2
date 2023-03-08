//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoRoundNumber: Int = 0
var writeLottoNumbers : Dictionary<String, Set<Int>> = Dictionary<String, Set<Int>>()

func createLottoNumbers() -> Set<Int>{
    var numbers : Set<Int> = Set<Int>()
    
    while numbers.count <= 5 {
        numbers.insert(Int.random(in: 1...45))
    }
    
    return numbers
}

func compareLotto(my number : [Int], lottoNumber : Set<Int>) -> Set<Int> {
    var matchingNumbers = Set<Int>()
    
    if number.count == 6 {
        matchingNumbers = Set<Int>(number).intersection(lottoNumber)
    } else {
        matchingNumbers = [0]
    }
    
    return matchingNumbers
}

func recordLotto(number : Set<Int>) -> Dictionary<String, Set<Int>> {
    lottoRoundNumber += 1
    writeLottoNumbers["\(lottoRoundNumber)회차"] = number

    return writeLottoNumbers
}

func showLottoResult(round : String, lottoNumber : Set<Int>, matchingResult : Set<Int> ) {
    
    let changeNumber : Array = Array(lottoNumber.sorted())
    let changeMatchingNumber : Array = Array(matchingResult.sorted())
    var outputNumber = [String]()
    var outputMatchingNumber = [String]()
    
    for i in 0...changeNumber.index(before: changeNumber.endIndex) {
        outputNumber.append(String(changeNumber[i]))
    }
    
    if matchingResult.contains(0) {
        print("로또번호는 6개 입니다. 다시 입력해주세요")
    } else {
        print("\(round)의 로또 당첨번호는 \(outputNumber.joined(separator: ",")) 입니다")
        
        if matchingResult.isEmpty {
            print("아쉽지만 검색하신 회차와 겹치는 번호가 없습니다.")
        } else {
            for i in 0...changeMatchingNumber.index(before: changeMatchingNumber.endIndex) {
                outputMatchingNumber.append(String(changeMatchingNumber[i]))
            }
            
            print("축하합니다! 검색하신 회차의 로또번호와 겹치는 번호는 \(outputMatchingNumber.joined(separator: ",")) 입니다!")
        }
    }
}

func inquireLottoResult(my number : [Int], roundNumber : UInt) {
    let round : String = "\(roundNumber)회차"
    var lottoRecord : Dictionary<String, Set<Int>> = Dictionary<String, Set<Int>>()
    
    for _ in 1...5 {
        lottoRecord = recordLotto(number: createLottoNumbers())
    }
    
    if let inquiryResult = lottoRecord[round]{
        showLottoResult(round: round, lottoNumber: inquiryResult, matchingResult: compareLotto(my: number, lottoNumber: inquiryResult))
    } else {
        print("해당 회차는 아직 추첨되지 않았습니다.")
    }
}

inquireLottoResult(my: myLottoNumbers, roundNumber: 2)

