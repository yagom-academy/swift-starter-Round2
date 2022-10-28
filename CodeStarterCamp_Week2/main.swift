//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func pickLotteryNumber() -> Set<Int> {
    var lotteryNumberSet: Set<Int> = Set<Int>()
    while lotteryNumberSet.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lotteryNumberSet.insert(randomNumber)
    }
    return (lotteryNumberSet)
}

let winningLottoNumbers: Set<Int> = pickLotteryNumber()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func compareLotteryNumber(_ winningLottoNumbers: Set<Int> , with myLottoNumbers: Set<Int>) {
    let lottoResult: Set<Int> = winningLottoNumbers.intersection(myLottoNumbers)
    if lottoResult.count != 0{
        print("축하합니다! 겹치는 번호는 \(lottoResult) 입니다")
    }
    else{
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareLotteryNumber(_: winningLottoNumbers, with: myLottoNumbers)
