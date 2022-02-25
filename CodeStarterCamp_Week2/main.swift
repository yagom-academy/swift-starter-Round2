//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func GenerateRandNum() -> Set<Int>{
    while randomLottoNum.count != 6 {
        let randNum = Int.random(in: 1...45)
        if randomLottoNum.contains(randNum) {
            continue
        }
        else {
            randomLottoNum.insert(randNum)
        }
    }
    return randomLottoNum
}

func checkLottoNum(){
    let intersection: Set<Int> = randomLottoNum.intersection(myLottoNumbers)
    if intersection.count == 0 {
            print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는",intersection,terminator: "입니다!\n")
    }
}
var randomLottoNum: Set<Int> = Set<Int>()
randomLottoNum=GenerateRandNum()
print("<당첨번호>\n",randomLottoNum)
let myLottoNumbers: [Int] = [12,24,32,41,5,16]
checkLottoNum()


