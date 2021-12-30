//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var lottoNumbers: Set<Int> = Set<Int>()

func assign() {
    for numbers in 1...45 {
        lottoNumbers.insert(numbers)
        
    }
    
}

func remove() {
    for _ in 1...39 {
        lottoNumbers.removeFirst()
    }

}

func drawLottoNumbers() -> Set<Int> {
    assign()
    remove()
    return lottoNumbers
}

let sortedMyLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var myLottoNumbers: Set<Int> = Set(sortedMyLottoNumbers)


let winningNumber: Set<Int> = drawLottoNumbers().intersection(myLottoNumbers)
let emptySet: Set<Int> = Set<Int>()
func checkWinningResult() {
    if winningNumber == emptySet {
    print("아쉽지만 겹치는 번호가 없습니다.")
        
    } else {
    print("축하합니다! 겹치는 번호는 \(winningNumber) 입니다!")
    }
    
}

print(drawLottoNumbers())
print(myLottoNumbers)
print(winningNumber)
checkWinningResult()

