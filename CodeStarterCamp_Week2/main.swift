//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func drawLottoNums() -> Set<Int> {
    var sixRandomNums: Set<Int> = []
    while sixRandomNums.count < 6 {
        let randomInt: Int = Int.random(in: 1...45)
        sixRandomNums.insert(randomInt)
    }
    return sixRandomNums
}
let lottoNums = drawLottoNums()
let myLottoNums: [Int] = [1, 2, 3, 4, 5, 6]

func compareLottoNums(){
    let commonLottoNums = lottoNums.intersection(myLottoNums)
    if commonLottoNums.count > 0 {
        print("축하합니다! 겹치는 번호는 \(commonLottoNums.map{String($0)}.joined(separator: ",")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareLottoNums()
