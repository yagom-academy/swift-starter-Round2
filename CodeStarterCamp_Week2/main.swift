//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - 순서도대로


func makeLottoNumCollection() -> Set<Int> {
    
    var lottoNum: Set<Int> = Set<Int>()
    var lottoEachNum: Int = 1
    
    repeat {
        lottoNum.insert(lottoEachNum)
        lottoEachNum += 1
    } while lottoEachNum < 46
    
    while lottoNum.count > 6 {
        lottoNum.removeFirst()
    }
    
    return lottoNum
}

//MARK: - 당첨확인

var myLottoNumbers: [Int] = [5, 6, 44, 35, 29, 10]
var winNumbers: Set<Int> = Set<Int>()

func matchMyLottoNum() -> Int {
    
    for i in myLottoNumbers {
        
        while makeLottoNumCollection().contains(i){
            winNumbers.insert(i)
        }
    }
    return winNumbers.count
}


func matchLottoNumber() {
    if matchMyLottoNum() > 0 {
        print("축하합니다! 겹치는 번호는 \(winNumbers)입니다!")
    } else  {
        print("아쉽지만 겹치는 숫자가 없습니다.")
    }
}

matchLottoNumber()

