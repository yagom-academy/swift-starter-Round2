//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var myLottoNumbersSet = Set(myLottoNumbers)

func collectLottoNumber() -> Int {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return saveLottoTimes(lottoNumbers: lottoNumbers)
}

func checkLottoNumbers(lotto collectNumbers: Set<Int>, my myNumbers: Set<Int>) {
    let numbersIntersection: Set<Int> = collectNumbers.intersection(myNumbers)
    let numbersSorted = numbersIntersection.sorted()
    if numbersSorted.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for numberCount in 0...numbersSorted.count-1 {
            let collectNumber = numbersSorted[numberCount]
            if numberCount < numbersSorted.count-1 {
                print("\(collectNumber), ", terminator: "")
            } else {
                print("\(collectNumber) ", terminator: "")
            }
        }
        print("입니다!")
    }
}

//checkLottoNumbers(lotto: collectLottoNumber(), my: myLottoNumbersSet)

//로또 회차별 당첨번호 저장
var lottoTimes: [String:Set<Int>] = [:]
var times = 0

func saveLottoTimes(lottoNumbers: Set<Int>) -> Int {
    times += 1
    let time: String = "\(times)" + "회차"
    lottoTimes[time] = lottoNumbers
//    let a = Array(lottoNumbers)
//    for i in 0...lottoNumbers.count-1 {
//        lottoTimes[time] = a[i]
//    }
//    if lottoTimes.count == 5 {
//        print(lottoTimes.sorted(by: { $0.0 < $1.0}))
//    }
    
    return times
}

func findLottoTimes(findLotto: Int) {
//    var findLottoNumbers: Set<Int>? = lottoTimes["\(findLotto)회차"]
    if let n: Set<Int> = lottoTimes["\(findLotto)회차"] {
        print("\(findLotto)회차의 로또 당첨 번호는 ", terminator: "")
        for i in 0...n.count-1 {
            let a = n.sorted()[i]
            if i < n.count-1 {
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

collectLottoNumber()
collectLottoNumber()
collectLottoNumber()
collectLottoNumber()
collectLottoNumber()
findLottoTimes(findLotto: 2)
