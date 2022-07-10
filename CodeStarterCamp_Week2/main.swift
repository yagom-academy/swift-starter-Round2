//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: Set<Int> = []
var winningNumbers: Set<Int> = []
var winnerNumberByRound: [Int: Set<Int>] = [:]

func insertLottoNumbers(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) {
    myLottoNumbers.insert(a)
    myLottoNumbers.insert(b)
    myLottoNumbers.insert(c)
    myLottoNumbers.insert(d)
    myLottoNumbers.insert(e)
    myLottoNumbers.insert(f)
    while myLottoNumbers.count < 6 {
        myLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func buyLotto(a: Int = Int.random(in: 1...45), b: Int = Int.random(in: 1...45), c: Int = Int.random(in: 1...45), d: Int = Int.random(in: 1...45), e: Int = Int.random(in: 1...45), f: Int = Int.random(in: 1...45)) {
    if !myLottoNumbers.isEmpty {
        myLottoNumbers.removeAll()
        insertLottoNumbers(a: a, b: b, c: c, d: d, e: e, f: f)
    } else {
        insertLottoNumbers(a: a, b: b, c: c, d: d, e: e, f: f)
    }
}

func writeWinningNumbers() {
    winnerNumberByRound[winnerNumberByRound.count+1] = winningNumbers
}

func drawLotto() {
    winningNumbers.removeAll()
    while winningNumbers.count < 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    writeWinningNumbers()
}

func compare(my numbers: Set<Int> = myLottoNumbers, with lottoNumbers: Set<Int> = winningNumbers) {
    print("로또6/45 당첨번호\n\("\(lottoNumbers.sorted())".trimmingCharacters(in: ["[","]"]))\n내 번호\n\("\(numbers.sorted())".trimmingCharacters(in: ["[","]"]))")
    if numbers.intersection(lottoNumbers).isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \("\(numbers.intersection(lottoNumbers).sorted())".trimmingCharacters(in: ["[","]"])) 입니다!")
    }
}

func searchForRounds(round: Int) {
    if let winningNumbers = winnerNumberByRound[round] {
        print("\(round)회차의 로또 당첨 번호는 \("\(winningNumbers.sorted())".trimmingCharacters(in: ["[","]"])) 입니다.")
    }
}

for _ in 1...5 {
    drawLotto()
}

searchForRounds(round: 1)

for round in 2...winnerNumberByRound.count {
    searchForRounds(round: round)
}

buyLotto()
drawLotto()
compare()
