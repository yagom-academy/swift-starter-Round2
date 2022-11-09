//
//  main.swift
//  week2 step2
//
//  Created by Jinah Park on 2022/11/09.
//

import Foundation

var lottoNumbers: [Int] = []

func makeLottoNumber() {
    while true {
        if lottoNumbers.count == 6 {
            break
        }
        let number = Int.random(in: 1...45)
        if lottoNumbers.contains(number) {
            continue
        } else {
            if lottoNumbers.count < 6 {
                lottoNumbers.append(number)
            }
        }
    }
    
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkLottoNumber() {
    var sameNumbers: [Int] = []
    for numbers in myLottoNumbers {
        if lottoNumbers.contains(numbers) {
            sameNumbers.append(numbers)
        }
    }
    if sameNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for i in sameNumbers {
            if i != sameNumbers[sameNumbers.count-1] {
                print("\(i)", terminator: ", ")
            }
            if i == sameNumbers[sameNumbers.count-1] {
                print("\(i)", terminator: " 입니다!")
            }
        }
    }
}

makeLottoNumber()
checkLottoNumber()


