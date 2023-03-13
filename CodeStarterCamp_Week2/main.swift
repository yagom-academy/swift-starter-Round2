//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [4, 31, 11, 7, 28, 45]

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    return lottoNumbers
}

func checkLottoNumbers(_ myNumbers: Array<Int>) {
    let lottoNumbers = makeLottoNumbers()
    let sameNumbers: [Int] = Array(Set(myNumbers).intersection(lottoNumbers))
    if sameNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for value in sameNumbers {
            if value == sameNumbers[sameNumbers.count - 1] {
                print(value, terminator:" ")
            } else {
                print(value, terminator: ", ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func saveLottoNumbers(times: Int) -> Dictionary<Int, Set<Int>> {
    var count = 0
    var manyLottoNumbers: [Int: Set<Int>] = [:]
    for _ in 1...times {
        count += 1
        manyLottoNumbers[count] = makeLottoNumbers()
    }
    return manyLottoNumbers
}

func findLottoNumber(times: Int, whichRound: Int) {
    if let lottoNumber = saveLottoNumbers(times: times)[whichRound] {
        print("\(whichRound)회차의 로또 당첨 번호는", terminator: " ")
        for values in Array(lottoNumber) {
            if values == Array(lottoNumber)[Array(lottoNumber).count - 1] {
                print(values, terminator: " ")
            } else {
                print(values, terminator: ", ")
            }
        }
        print("입니다.")
    }
}

findLottoNumber(times: 5, whichRound: 2)
