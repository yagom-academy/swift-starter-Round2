//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - lottoNumberGenerator
func lottoNumberGenerator() -> Set<String> {
    var lottoNumber = Set<String>()
    
    while lottoNumber.count < 6 {
        var randomNumber = String(Int.random(in: 1...45))
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}

//MARK: - joinedIntersection
let myLottoNumbers:[String] = ["42", "2", "10", "14", "25"]

func joinedIntersection(lottoNumber: Set<String>, myNumber: [String]) -> String {
    let intersection = lottoNumber.intersection(myNumber)
    return intersection.map{String($0)}.joined(separator: ", ")
}

//MARK: - overlappingNumbers
func overlappingNumbers(lottoNumber: Set<String>, myNumber: [String]) {
    
    if joinedIntersection(lottoNumber: lottoNumber, myNumber: myNumber) == ""  {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(joinedIntersection(lottoNumber: lottoNumber, myNumber: myNumber))입니다!")
    }
}

overlappingNumbers(lottoNumber: lottoNumberGenerator(), myNumber: myLottoNumbers)


//MARK: - arrayLottoNumberGenerator()
var lottoDictionary:[String : [Int]] = [:]

func arrayLottoNumberGenerator() -> [Int] {
    var lottoNumber = Set<Int>()
    
    while lottoNumber.count < 6 {
        var randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    let arraylottonumber = Array(lottoNumber)
    return arraylottonumber
}

//MARK: - saveLottoNumbers
func saveLottoNumbers(round: Int) -> [String : [Int]] {
    var n = 1
    
    while n <= round {
        var joinedLottoNumberGenerator = arrayLottoNumberGenerator().sorted()
        lottoDictionary["\(n)회차"] = joinedLottoNumberGenerator
        n = n + 1
    }
    return lottoDictionary
}

print(saveLottoNumbers(round: 5))

//MARK: - showWinningNumbers
func showWinningNumbers(round: Int) {
    if let winningNumbers = lottoDictionary["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
    } else {
        print("아직 \(round)회차의 당첨 번호가 아직 추첨되지 않았습니다.")   //  round의 값을 벗어나면 출력
    }
}
showWinningNumbers(round: 3)
