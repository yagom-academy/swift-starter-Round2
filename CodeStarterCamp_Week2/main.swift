//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func selectLottoNumbers() {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return saveLottoTimes(lottoNumbers: lottoNumbers)
}

//로또 회차별 당첨번호 저장
var lottoTimes: Dictionary<String, Set<Int>> = [:]
var times = 0

func saveLottoTimes(lottoNumbers: Set<Int>) {
    times += 1
    let time: String = "\(times)" + "회차"
        lottoTimes[time] = lottoNumbers
}

func findLottoTimes(at findLottoTime: Int) {
    if let lottoTime: Set<Int> = lottoTimes["\(findLottoTime)회차"] {
        print("\(findLottoTime)회차의 로또 당첨 번호는 ", terminator: "")
        for lottoNumberCount in 0...lottoTime.count - 1 {
            let a = lottoTime.sorted()[lottoNumberCount]
            if lottoNumberCount < lottoTime.count - 1 {
                print("\(a), ", terminator: "")
            } else {
                print("\(a) ", terminator: "")
            }
        }
        print("입니다.")
    } else {
        print("해당 회차가 존재하지 않습니다.")
    }
}

selectLottoNumbers()
selectLottoNumbers()
selectLottoNumbers()
selectLottoNumbers()
selectLottoNumbers()
findLottoTimes(at: 2)
