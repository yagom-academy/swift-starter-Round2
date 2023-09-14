//
//  createNumder.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/09/09.
//
import Foundation

func createLottoNumders() -> Set<Int> {
    var generateLotto : Set<Int> = []

    while generateLotto.count < 6{
        let number = Int.random(in: 1...45)
        generateLotto.insert(number)
    }
    return generateLotto
}

func generateLottoNumbersForRounds(_ round: Int) -> [Int: [Int]] {
    var lottoResults: [Int: [Int]] = [:]
    
    for round in 1...round {
        let LottoNumber = createLottoNumders()
        lottoResults[round] = Array(LottoNumber)
        print("\(round)회차의 로또 당첨 번호는 \(LottoNumber) 입니다.")
    }
    return lottoResults
}


func displayLottoResultForRound(lottoResults: [Int: [Int]], desiredRound: Int) {
    
    if let  desiredLotto = lottoResults[desiredRound] {
        print("\(desiredRound)회차의 로또 당첨 번호는 \(desiredLotto.sorted()) 입니다.")
    } else {
        print("\(desiredRound)회차의 로또 당첨 번호를 찾을 수 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let overlappingLottoNumder: Set<Int> = createLottoNumders().intersection(myLottoNumbers)

func checkForOverlappingNumbers(overlappingLottoNumder: Set<Int>){

    if overlappingLottoNumder.count == 0{
        print("아쉽지만 겹치는 번호가 없습니다")
    }else{
        print("축하합니다! 겹치는 번호는 \(overlappingLottoNumder)입니다!")
    }
}

