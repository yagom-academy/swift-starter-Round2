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
var lottoDictionary: [String : [Int]] = [:] // 로또번호 저장할 빈 딕셔너리
let arrayNumbers = Array<Int>(1...45)   // 랜덤숫자 6개 만들어내는 함수 - 로또번호  -> 로또번호만 단순히 만드는 함수

func arrayLottoNumberGenerator() -> [Int] {
    let shuffledNumbers = arrayNumbers.shuffled()[0...5]
    let arrayShuffledNumbers = Array(shuffledNumbers)
    return arrayShuffledNumbers
}

//MARK: - lottoNumbersWithRounds()
func lottoNumbersWithRounds() {             // 로또 번호와 회차를 같이 출력해 딕셔너리에 저장하는 함수
    let round = "\(lottoDictionary.count + 1)회차"
    lottoDictionary[round] = arrayLottoNumberGenerator()
}

//MARK: - 로또번호와 회차를 같이 출력하는 함수 5번 반복
for _ in 1...5{
    lottoNumbersWithRounds()
}
//MARK: - showWinningNumbers
func showWinningNumbers(round: Int) {
    if let winningNumbers = lottoDictionary["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
    } else {
        print("아직 \(round)회차의 당첨 번호가 아직 추첨되지 않았습니다.")   //  round의 값을 벗어나면 출력
    }
}
showWinningNumbers(round: 2)
