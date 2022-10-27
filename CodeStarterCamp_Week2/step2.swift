//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Hyejeong Jeong on 2022/10/27.
//

import Foundation

let myLottoNumbers: [Int] = [3, 7, 15, 27, 37, 41]

// STEP2의 createLottoNumbers() 함수는 STEP3 파일로 이동했습니다.

func checkOverlapNumbers() {
    let winNumbers = createLottoNumbers()
    let overlapNumbers = Array(winNumbers.intersection(myLottoNumbers).sorted())
    let numbersCount = overlapNumbers.count
    
    func removeBracket(range: [Int] = overlapNumbers, count: Int = numbersCount) {
        for i in range {
            if i != range[count - 1] {
                print(i, terminator: ", ")
            } else {
                print(i, terminator: " ")
            }
        }
    }
    
    if numbersCount > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        removeBracket()
        print("입니다!")
        
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}


