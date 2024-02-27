//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: [Int] = []
var isSame: Bool = false
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
enum Result {
    case fail, success
}
var result: Result

func makeNumber()-> [Int]{
    var numList: [Int] = []
    var time = 0
    
    while time <= 5 {
        let number = Int.random(in: 1...45) //랜덤하게 수를 생성
        
        for num in numList {
            if num == number {
                isSame = true
                break
            }
        }
        if isSame != true{
            numList.append(number)
            time = time + 1
        }
    }
    return numList
}

func checkNumber()-> Result{
    for num in myLottoNumbers{
        if lottoNumbers.contains(num) == false{
            return Result.fail
        }
    }
    return Result.success
}


lottoNumbers = makeNumber()
if checkNumber() == Result.fail{
    print("아쉽지만 겹치는 번호가 없습니다.")
} else{
    print("축하합니다! 겹치는 번호는 \(myLottoNumbers) 입니다!")
}
