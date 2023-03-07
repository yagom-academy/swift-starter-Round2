//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//func collectLottoNumber() -> Int {
//    var lottoNumbers: Set<Int> = []
//    while lottoNumbers.count < 6 {
//        let lottoNumber = Int.random(in: 1...45)
//        lottoNumbers.insert(lottoNumber)
//    }
//
//    return saveLottoTimes(lottoNumbers: lottoNumbers)
//}

func selectLottoNumbers() {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return saveLottoTimes(lottoNumbers: lottoNumbers)
}

func checkLottoNumbers(_ selectLottoNumbers: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let duplicationSortedLottoNumbers: [Int] = selectLottoNumbers.intersection(myLottoNumbers).sorted()
    if duplicationSortedLottoNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for numberIndex in 0...duplicationSortedLottoNumbers.count-1 {
            let lottoNumber = duplicationSortedLottoNumbers[numberIndex]
            if numberIndex < duplicationSortedLottoNumbers.count-1 {
                print("\(lottoNumber), ", terminator: "")
            } else {
                print("\(lottoNumber) ", terminator: "")
            }
        }
        print("입니다!")
    }
}

//checkLottoNumbers(selectLottoNumbers())

//로또 회차별 당첨번호 저장
var lottoTimes: Dictionary<String, Set<Int>> = [:]
var times = 0

func saveLottoTimes(lottoNumbers: Set<Int>) {
    times += 1
    let time: String = "\(times)" + "회차"
        lottoTimes[time] = lottoNumbers
}

func findLottoTimes(findLottoTime: Int) {
    if let lottoTime: Set<Int> = lottoTimes["\(findLottoTime)회차"] {
        print("\(findLottoTime)회차의 로또 당첨 번호는 ", terminator: "")
        for lottoNumberOfTime in 0...lottoTime.count-1 {
            let a = lottoTime.sorted()[lottoNumberOfTime]
            if lottoNumberOfTime < lottoTime.count-1 {
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
print(lottoTimes)
findLottoTimes(findLottoTime: 2)

//func findLottoTimes(findLotto: Int) {
//    if let n: Set<Int> = lottoTimes["\(findLotto)회차"] {
//        print("\(findLotto)회차의 로또 당첨 번호는 ", terminator: "")
//        for i in 0...n.count-1 {
//            let a = n.sorted()[i]
//            if i < n.count-1 {
//                print("\(a), ", terminator: "")
//            } else {
//                print("\(a) ", terminator: "")
//            }
//        }
//        print("입니다.")
//    } else {
//        print("해당 회차가 존재하지 않습니다.")
//    }
//}
//
//collectLottoNumber()
//collectLottoNumber()
//collectLottoNumber()
//collectLottoNumber()
//collectLottoNumber()
//findLottoTimes(findLotto: 2)
