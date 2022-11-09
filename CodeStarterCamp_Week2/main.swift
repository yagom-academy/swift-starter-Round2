//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation



var myLottoNumbers: [Int] = [8, 10, 19, 21, 29, 37]
var lottoNumbers: Set<Int> = []


repeat {
   let randomInt = Int.random(in: 1...45)
   lottoNumbers.insert(randomInt)
} while lottoNumbers.count < 6

let overlapNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)

func deleteBracket(numbers: Set<Int>) {
    var printednumbers = 0
    for number in numbers {
        
        if printednumbers < numbers.count - 1 {
            print(number, terminator: ", ")
            
            printednumbers = printednumbers + 1
            
        } else {
            print(number, terminator: " 입니다!.\n")
        }
    }
}

func checkOverlapNumbers() {
    
    if overlapNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        deleteBracket(numbers: overlapNumbers)
        
    } else {
            print("아쉽지만 겹치는 번호가 없습니다.")
        }
}


var savedLottoNumbers = [String: Set<Int>]()
var lottoRound = 0

func saveLottoNumbers() {
    lottoRound = lottoRound + 1
    savedLottoNumbers["\(lottoRound)회차"] = lottoNumbers
}

for _ in 1...5 {
    saveLottoNumbers()
}

var wantLottoRound = "1회차"

if let numberOfRound = savedLottoNumbers[wantLottoRound]{
    print("\(wantLottoRound)의 로또 당첨 번호는", terminator: "")

    deleteBracket(numbers: numberOfRound)
}

