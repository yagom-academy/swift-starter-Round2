//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Reimos on 9/29/24.
//

func makeLottoNumber()  {
    let myLottoNumbers: Set<Int> = [1,2,3,4,5,6]

    var randomLottoSet: Set<Int> = []
    
    while randomLottoSet.count < 7 {
        
        let randomLottoNumbers = Int.random(in: 1...45)
        randomLottoSet.insert(randomLottoNumbers)
    
    }
    
    
    if myLottoNumbers == randomLottoSet {
        print("축하합니다! 겹치는 번호는 \(randomLottoSet) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
}





