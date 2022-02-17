//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 지상률 on 2022/02/17.
//

import Foundation

//로또 당첨 번호를 생성하는 함수
func drawAndCheckLottoNumbers(){
    var lottoNumbers: Set<Int> = Set<Int>()
    func makeLottoNumbers()-> Set<Int>{
        while lottoNumbers.count < 6{
            let number = Int.random(in: 1...45)
            lottoNumbers.insert(number)
        }
        return lottoNumbers
    }
    print(makeLottoNumbers())

    //찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
    let myLottoNumbers: [Int] = [1,23,32,4,15,6]
    var exactNumnbers: [Int] = []
    
    for count in myLottoNumbers{
        for i in lottoNumbers{
            if count == i{
                exactNumnbers.append(i)
            }
        }
    }
    if exactNumnbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }else{
        print("축하합니다! 겹치는 번호는 \(exactNumnbers) 입니다.")
    }
}
