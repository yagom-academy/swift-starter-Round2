//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> [Int] {

    var lottoNumbers: [Int] = [Int]()
    var randNum: Int
    
    repeat {
        
        randNum = Int.random(in: 1...45)

        if lottoNumbers.contains(randNum) == false{
            lottoNumbers.append(randNum)
        }
        
    } while lottoNumbers.count < 6

    return lottoNumbers
    
}


func compareLotto(myLotto: [Int], Lotto: [Int]) {
    
    var resultNumbers: [Int] = [Int]()
    
    for numbers in Lotto {
        if myLotto.contains(numbers) {
            resultNumbers.append(numbers)
        }
    }
    
    if resultNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(resultNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
    }
    
}

compareLotto(myLotto: myLottoNumbers, Lotto: makeLottoNumbers())
