//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var lottoNumbers: Array<Int> = [Int]()

var resultLotto: [Int] = [Int]()

func makeLotto() {

    repeat {
        let num = Int.random(in: 1...45)

        if lottoNumbers.contains(num){

        } else {
            lottoNumbers.append(num)
        }

    } while lottoNumbers.count < 6

}

func checkLotto() {
    
    var i = 0
    
    for _ in 1...6 {
        
        if lottoNumbers.contains(myLottoNumbers[i]) {
            resultLotto.append(myLottoNumbers[i])
        }
        i = i + 1
        
    }
    
    if resultLotto.count > 0 {
        print("축하합니다! 겹치는 번호는 \(resultLotto) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }

}

makeLotto()
checkLotto()
