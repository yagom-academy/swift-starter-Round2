//
//  main.swift
//  STEP3_generateLottoNumber
//
//  Created by insu on 2022/05/12.
//

import Foundation

var lottoHistory = [String : Set<Int>]()

func generateLottoNumber() -> Set<Int> {
    var winnerNumber: Set<Int> = Set<Int>()
    while winnerNumber.count < 6 {
        winnerNumber.insert(Int.random(in: 1...45))
    }
    return winnerNumber
}

func recordLottoNumber(round: Int) {
    lottoHistory["\(round)회차"] = generateLottoNumber()
}

func playLottoNumber(totalRound: Int) {
    for i in 1...totalRound {
        recordLottoNumber(round: i)
    }
}

func searchLottoNumber(searchRound: Int) {
    if let lottoLog = lottoHistory["\(searchRound)회차"] {
        let lottoNumberConvertedToString = lottoLog.map { String($0) }.joined(separator: ", ")
        print("\(searchRound)회차의 로또 당첨 번호는 \(lottoNumberConvertedToString) 입니다.")
    } else {
        print("\(searchRound)회차는 존재하지 않습니다.")
    }
}

playLottoNumber(totalRound: 5)
searchLottoNumber(searchRound: 4)


