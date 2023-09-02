//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLotto()-> Dictionary<Int,Set<Int>>{
    var lottoNumber : Set<Int> = []
    var roundOfLotto : [Int:Set<Int>] = [:]
    var roundOfNumber : Int = 1
    while roundOfNumber < 6{
        lottoNumber.removeAll()
        while lottoNumber.count < 6{
            lottoNumber.insert(Int.random(in: 1...45))
        }
        roundOfLotto.updateValue(lottoNumber, forKey: roundOfNumber)
        roundOfNumber += 1
    }
    return roundOfLotto
}
func getRoundOfLotto(){
    let roundOfLotto : [Int:Set<Int>] = createLotto()
    for roundOfInquiry in roundOfLotto{
        if roundOfInquiry.key == 2{
            print("\(roundOfInquiry.key)회차의 로또 당첨 번호는 \(roundOfInquiry.value.map({String($0)}).joined(separator: ", ")) 입니다.")
        }
    }
}
//func checkLotto(){
//    let myLottoNumbers : [Int] = [1,2,3,4,5,6]
//    var bingGo : [Int] = []
//    for i in myLottoNumbers{
//        if lottoNumber.contains(i){
//            bingGo.append(i)
//        }
//    }
//    if bingGo.isEmpty{
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    }else{
//        print("축하합니다! 겹치는 번호는 \(bingGo.map({String($0)}).joined(separator: ", ")) 입니다!")
//    }
//}
//roundOfLotto()
getRoundOfLotto()
