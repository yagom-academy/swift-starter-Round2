//
//  main5.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/31.



import Foundation

createLottoNumder()

var lottoResults: [Int: Set<Int>] = [:]

func lottoNumderRound() -> [Int: Set<Int>]{
    for round in 1...5 {
        let LottoNumber = createLottoNumder()
        lottoResults[round] = LottoNumber
        print("\(round)회차의 로또 당첨 번호는 \(LottoNumber) 입니다.")
    }
    return lottoResults
}
lottoNumderRound()

func lottoDesiredRound(desiredRound: Int = 2){
    
    if let desiredLotto = lottoResults[desiredRound]{
        print("\(desiredRound)회차의 로또 당첨 번호는 \(desiredLotto.sorted()) 입니다.")
    } else {
        print("\(desiredRound)회차의 로또 당첨 번호를 찾을 수 없습니다.")
    }
}
lottoDesiredRound(desiredRound: 2)



