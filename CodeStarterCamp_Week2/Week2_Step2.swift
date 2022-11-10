//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

func checkLottoResult() -> Array<Int> {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var resultNumbers: Array<Int> = []

    for number in generateLottoNumbers() {
        if myLottoNumbers.contains(number) {
            resultNumbers.append(number)
        }
    }
    
    return resultNumbers
}

func printLottoResult() {
    let lottoResult = checkLottoResult()
    
    if lottoResult.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for result in lottoResult {
            if result != lottoResult[0] {
                print(", \(result)", terminator: "")
            } else {
                print("\(result)", terminator: "")
            }
        }
        print(" 입니다!")
    }
}

printLottoResult()
