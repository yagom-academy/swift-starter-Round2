//
//  STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [4,8,23,27,44,32]
var lottoSet: Set<Int> = Set<Int> ()

func generateLotto () {
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<46))
    }
}

func convertArray(from array: [Int]) -> [String] {
     var convertedArray: [String] = []
     for numbers in array {
       convertedArray.append(String(numbers))
     }
     return convertedArray
   }

func checkLotto () {
    var matchedNumbers: Array<Int> = Array<Int>()
    for toFind in myLottoNumbers {
        for lottoNumber in lottoSet {
            if toFind == lottoNumber {
                matchedNumbers.append(toFind)
            }
        }
    }
    if matchedNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    print("축하합니다! 겹치는 번호는 ",terminator: "")
    let printingArray = convertArray(from: matchedNumbers)
    print("\(printingArray.joined(separator: ", ")) 입니다!")
}


