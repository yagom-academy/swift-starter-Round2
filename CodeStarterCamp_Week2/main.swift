//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLotto()->Set<Int>{
    var lottoNumber : Set<Int> = []
    while lottoNumber.count < 6{
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}
func checkLotto(){
    let lottoNumber : Set<Int> = createLotto()
    let myLottoNumbers : [Int] = [1,2,3,4,5,6]
    var bingGo : [Int] = []
    for i in myLottoNumbers{
        if lottoNumber.contains(i){
            bingGo.append(i)
        }else{
            continue
        }
    }
    if bingGo.isEmpty{
        print("아쉽지만 겹치는 번호가 없습니다.")
    }else{
        print("축하합니다! 겹치는 번호는 \(bingGo.map({String($0)}).joined(separator: ", ")) 입니다!")
    }
}
checkLotto()
