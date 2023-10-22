//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var number: Int = 1
var rotto_numbers: [Int] = []
var randomRottoArray: [Int] = []
var empty_Array: [Int] = []
let myLottoNumbers: [Int] = [2, 5, 34, 10, 12,30]
var a: Int = 0
var rottoDic: Dictionary<String, Any> = [:]

//1-45까지 수를 배열에 넣느 함수
func makerottonumber() -> [Int]{
    for _ in 1...45 {
        rotto_numbers.append(number)
        number += 1
    }
    return rotto_numbers
}

//45개중 6개를 고르는 함수
func pickrottonumber() -> [Int]{
    for _ in 1...6 {
        if let number = rotto_numbers.randomElement() {
            randomRottoArray.append(number)
            rotto_numbers.remove(at: rotto_numbers.firstIndex(of: number)!)
        }
    }
    return randomRottoArray
}


makerottonumber()

//딕셔너리에 넣는 함수
func makeRottoDic() {
    for e in 1...5{
        pickrottonumber()
        rottoDic["\(e)회차"] = randomRottoArray
    }
}

makeRottoDic()

print(rottoDic)

func matchNumber() -> [Int]{
    for a in 0...5 {
        for b in 0...5 {
            if randomRottoArray[a] == myLottoNumbers[b]{
                empty_Array.append(myLottoNumbers[b])
            }
        }
    }
    return empty_Array
}

matchNumber()

func result () {
    print("축하합니다! 겹치는 번호는 ")
    while empty_Array[a] != nil {
        print("\(empty_Array[a])" + ",")
        a += 1
    }
    print("입니다!")
}



result()
