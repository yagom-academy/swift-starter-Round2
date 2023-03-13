//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


//let myLottoNumbers: Set<Int> = [2,5,16,27,35,40]


func makeLottoNumbers() -> Set<Int> {
    var randomLottoNumbers: Set<Int> = Set<Int>()
    while randomLottoNumbers.count <= 6 {
        let randomNumber = Int.random(in: 1...45)
        randomLottoNumbers.insert(randomNumber)
    }
    return randomLottoNumbers
}

func saveLottoTry() -> Dictionary<String, Set<Int>>{
    var lottoTry = [String: Set<Int>] ()
    var newTry: Int = 1
    while newTry <= 5 {
        lottoTry["\(newTry)회차"] = makeLottoNumbers()
        newTry += 1
    }
    return lottoTry
}

func getLottoTryResult(time: Int) {
    if let lottoNumbers = saveLottoTry()["\(time)회차"] {
        print("\(time)회차의 로또 당첨 번호는 ", terminator: "")
        print(lottoNumbers.map { String($0) }.joined(separator: ", "), terminator: " 입니다.")
    } else {
        print("회차 정보가 없습니다.")
    }
}

/*func checkSameLottoNumbers() {
    let sameNumbers : Set<Int> = myLottoNumbers.intersection(makeLottoNumbers())
    switch sameNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    default:
        let result = sameNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}

checkSameLottoNumbers() */

getLottoTryResult(time: 3)

