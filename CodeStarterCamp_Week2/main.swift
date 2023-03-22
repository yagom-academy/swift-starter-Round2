//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lotto: Set<Int> = getlotto()

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
    
    lottoNumber = lottoNumber.intersection(lotto)
    
    var lottoIntersectionArray: [Int] = [Int](lottoNumber)
    
    lottoIntersectionArray = lottoIntersectionArray.sorted()
    print("번호",lottoIntersectionArray)
    return lottoIntersectionArray
}


func printArrayMemberOneByOne() {
    
    let lottoNumberCount: Int = getIntersectionLottoNumber().count
    
    let lottoIntersectionArrayForFunc: [Int] = getIntersectionLottoNumber()
    
    if lottoNumberCount == 1 {
        
        print(lottoIntersectionArrayForFunc[0] ,terminator: " ")
        
    } else {
        
        for num in 1...lottoNumberCount - 1 {
            print("\(lottoIntersectionArrayForFunc[(num - 1)]), ",terminator: "")
            
        }
        print("\(lottoIntersectionArrayForFunc[lottoNumberCount - 1]) ",terminator: "")
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


