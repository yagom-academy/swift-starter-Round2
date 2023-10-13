//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = []
myLottoNumbers = [1, 2, 3, 4, 5, 6]

checkWinningLottoNumbers(myNumbers: myLottoNumbers, winnigNumbers: makeLottoNumbers())

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let oneLottoNumber: Int = Int.random(in: 1...45)
        lottoNumbers.insert(oneLottoNumber)
    }
    
    return lottoNumbers
}

func checkWinningLottoNumbers(myNumbers: Array<Int>, winnigNumbers: Set<Int> ) {
    let changedMyNumbers = Set(myNumbers)
    let intersectionNumbers: Set<Int> = winnigNumbers.intersection(changedMyNumbers)
   
    print(makeReturnMessage(intersectionNumbers: intersectionNumbers))
}

func makeReturnMessage(intersectionNumbers: Set<Int>) -> String {
    var returnMessage = ""
    
    if intersectionNumbers.isEmpty {
        returnMessage = "아쉽지만 겹치는 번호가 없습니다."
    } else {
        let printIntersectionNumbers = intersectionNumbers.map { String($0) }.joined(separator: ", ")
        returnMessage = "축하합니다! 겹치는 번호는 " + printIntersectionNumbers + " 입니다!"
    }
    
    return returnMessage
}
