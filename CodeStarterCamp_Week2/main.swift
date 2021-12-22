//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3,5,17,22,32,39]
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()
var index = 0

func makeLottoNumbers() -> Set<Int> {
    
    var lottoNumbers: Set<Int> = []

    while lottoNumbers.count < 6 {
        let randomInt = Int.random(in: 1...45)
        lottoNumbers.insert(randomInt)
    }
    storeLottoNumbers(lottoNumbers: lottoNumbers)
    return lottoNumbers
}

func storeLottoNumbers(lottoNumbers: Set<Int>) {
    
    index += 1
    lottoDictionary["\(index)회차"] = lottoNumbers
}

func checkLottoNumbers(myLottoNumbers: [Int]) {
    
    let matchedNumbers = makeLottoNumbers().intersection(myLottoNumbers)

    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다. \n")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers)입니다! \n")
    }
}

func printAnyLottoNumbers() {

    index = 2
    
    if let randomLottoNumbers: Set<Int> = lottoDictionary["\(index)회차"] {
        print("\(index)회차의 로또 당첨 번호는 \(randomLottoNumbers.sorted())입니다.")
    }
    
}

checkLottoNumbers(myLottoNumbers: myLottoNumbers)
checkLottoNumbers(myLottoNumbers: myLottoNumbers)
checkLottoNumbers(myLottoNumbers: myLottoNumbers)
checkLottoNumbers(myLottoNumbers: myLottoNumbers)
checkLottoNumbers(myLottoNumbers: myLottoNumbers)
printAnyLottoNumbers()

