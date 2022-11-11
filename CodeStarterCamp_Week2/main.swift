//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = [8, 10, 19, 21, 29, 37]

func makeLottoNumbers() -> Array<Int>{
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        let randomInt = Int.random(in: 1...45)
        
        lottoNumbers.insert(randomInt)
      }
    return Array(lottoNumbers)
}

func printLottoNumbers(numbers: Array<Int>) {
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


/*
func printOverlappingNumbers(lottoNumber: Set<Int>) {
    
    let overlapNumbers: Set<Int> = lottoNumber.intersection(myLottoNumbers)
    if overlapNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        printLottoNumbers(numbers: overlapNumbers)
        
    } else {
            print("아쉽지만 겹치는 번호가 없습니다.")
        }
}

printOverlappingNumbers(lottoNumber:makeLottoNumbers())
*/
 
// MARK: - STEP3
var savedLottoNumbers = [String: Array<Int>]()

func saveLottoNumbers(runtime: Int) {
    for round in 1...runtime{
        let lottoRound = round
        let lottoNumbers = makeLottoNumbers()
        
        savedLottoNumbers["\(lottoRound)회차"] = lottoNumbers
    }
}

func findLottoNumbers(numberOfround: String) {
    if let numbersOfRound = savedLottoNumbers[numberOfround] {
        print("\(numberOfround)의 로또 당첨 번호는 ", terminator: "")
        printLottoNumbers(numbers: numbersOfRound)
    } else{
        print("\(numberOfround)는 실행되지 않았습니다.")

    }
}


saveLottoNumbers(runtime: 5)

findLottoNumbers(numberOfround: "3회차")
findLottoNumbers(numberOfround: "4회차")
findLottoNumbers(numberOfround: "5회차")
findLottoNumbers(numberOfround: "1회차")
findLottoNumbers(numberOfround: "6회차")




