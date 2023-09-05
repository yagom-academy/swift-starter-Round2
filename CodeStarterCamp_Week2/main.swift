//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLotto()->[Int]{
    var lottoNumber : Set<Int> = []
    while lottoNumber.count < 6{
        lottoNumber.insert(Int.random(in: 1...45))
    }
    let myLottoNumber = Array(lottoNumber).sorted()
    return myLottoNumber
}
func createRoundOfLotto()->Dictionary<String,[Int]>{
    var roundOfNumber : Int = 1
    var roundOfLotto : Dictionary<String,[Int]> = [:]
    while roundOfNumber < 6{
        roundOfLotto.updateValue(createLotto(), forKey: "\(roundOfNumber)회차")
        roundOfNumber += 1
    }
    return roundOfLotto
}
func getRoundOfLotto(searchOfNumber : Int){
    let roundOfLotto : [String:[Int]] = createRoundOfLotto()
    guard let lottoNumber = roundOfLotto["\(searchOfNumber)회차"] else{
        return
    }
    print("\(searchOfNumber)회차의 로또 당첨 번호는 \(lottoNumber.map({String($0)}).joined(separator: ", ")) 입니다.")
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

getRoundOfLotto(searchOfNumber: 1)
