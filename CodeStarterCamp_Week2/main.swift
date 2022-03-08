//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        let number = Int.random(in: 1...45)
        lottoNumber.insert(number)
    }
    return lottoNumber
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func confirmWinningLotto(myLottoNumbers: [Int]) {
    var matchingNumbers: [Int] = []
    let winningNumbers: Set<Int> = generateLottoNumber()
    for myLottoNumber in myLottoNumbers{
        for winningNumber in winningNumbers{
            if myLottoNumber == winningNumber{
                matchingNumbers.append(winningNumber)
            }
        }
    }
    print(winningNumbers)
    if matchingNumbers.isEmpty == true {
        print("Sorry;;; It's not your day :(")
    }else{
        print("Congrat. ! Your matching numbers are \(matchingNumbers).")
    }
}

confirmWinningLotto(myLottoNumbers: myLottoNumbers)

