//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

 var myLottoNumbers: Set<Int> = []

 func printLotto(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) {
     myLottoNumbers.insert(a)
     myLottoNumbers.insert(b)
     myLottoNumbers.insert(c)
     myLottoNumbers.insert(d)
     myLottoNumbers.insert(e)
     myLottoNumbers.insert(f)
 }

 func buyLotto(a: Int = Int.random(in: 1...45), b: Int = Int.random(in: 1...45), c: Int = Int.random(in: 1...45), d: Int = Int.random(in: 1...45), e: Int = Int.random(in: 1...45), f: Int = Int.random(in: 1...45)) {
     if myLottoNumbers.isEmpty != true {
         myLottoNumbers.removeAll()
         printLotto(a: a, b: b, c: c, d: d, e: e, f: f)
         } else {
         printLotto(a: a, b: b, c: c, d: d, e: e, f: f)
         }
 }

var winningNumbers: Set<Int> = []

func drawLotto() {
    repeat {
        let drawnNumber = Int.random(in: 1...45)
        winningNumbers.insert(drawnNumber)
    } while winningNumbers.count < 6
}

func compare(my numbers: Set<Int>, with lottoNumbers: Set<Int>) {
    let intersection = Array(numbers.intersection(lottoNumbers))
    if intersection.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let intersectionString: String = "\(intersection)"
        print("축하합니다! 겹치는 번호는 \(intersectionString.trimmingCharacters(in: ["[","]"])) 입니다!")
    }
}

buyLotto(a: 7, b: 15)
compare(my: myLottoNumbers, with: winningNumbers)
