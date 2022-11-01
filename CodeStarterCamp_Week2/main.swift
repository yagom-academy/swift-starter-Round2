//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation




var myLottoNumbers: [Int] = [8, 10, 19, 21, 29, 37]
var lottoNumbes: Set<Int> = []


repeat { let randomInt = Int.random(in: 1...45)
    lottoNumbes.insert(randomInt)
} while lottoNumbes.count < 6

let overlapNumbers: Set<Int> = lottoNumbes.intersection(myLottoNumbers)

func checkOverlapNumbers() {
    let overlapNumbers =  lottoNumbes.intersection(myLottoNumbers)
    var printednumbers = 0
    
    if overlapNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for number in overlapNumbers {
            if printednumbers < overlapNumbers.count - 1 {
                print(number, terminator: ",")
                
                printednumbers = printednumbers + 1
            } else {
                print(number, terminator: " 입니다!")
            }
        }
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
            }
    }
    
checkOverlapNumbers()



