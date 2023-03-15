//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func getlotto() -> Set<Int>{
    
    var lotto: Set<Int> = Set<Int>()
    
    repeat {
        
        lotto.insert(Int.random(in: (1...45)))
        
    } while (lotto.count < 6)
  
    return lotto
    
}

func getIntersectionLottoNumber() -> [Int]{
    
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var lottoNumber: Set<Int> = Set<Int> (myLottoNumbers)
    
    lottoNumber = lottoNumber.intersection(getlotto())
    
    var lottoIntersectionArray: [Int] = [Int](lottoNumber)
    
    lottoIntersectionArray = lottoIntersectionArray.sorted()
   
    
    return lottoIntersectionArray
}



func printArrayMemberOneByOne() {
    
    let lottoNumberCount: Int = getIntersectionLottoNumber().count
    for _ in 1...lottoNumberCount {
        print("\(getIntersectionLottoNumber()[(lottoNumberCount - 1)]), ",terminator: "")
    }
}

func printLottoResult() {
    let lottoNumberCount: Int = getIntersectionLottoNumber().count
    
    if lottoNumberCount > 0 {
        print("축하합니다! 겹치는 번호는 ",terminator: "")
        printArrayMemberOneByOne()
        print("입니다")
        
    } else if lottoNumberCount == 0 {
        print("아쉽지만 겹치는 번호가 없습니다")
        
    }
    
}

printLottoResult()
