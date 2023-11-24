//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


// 로또 번호 생성 함수
func createLottoNumber() -> Set<Int> {
    var createLottoNumber: Set<Int> = Set<Int>()
    
    
    while createLottoNumber.count < 6 {
        createLottoNumber.insert(Int.random(in: 1...45))
    }

    return createLottoNumber

}

// 생성된 로또 번호 및 회차를 저장하는 함수
func storeLotto() -> Dictionary<String, Set<Int>> {
    // 회차 와 로또 당첨 번호를 저장하는 딕셔너리 타입에 변수 생성
    var lottoInfomation: Dictionary<String, Set<Int>> = Dictionary<String, Set<Int>>()
    
    for number in 1...5 {
        lottoInfomation["\(number)회차"] = createLottoNumber()
    }
    return lottoInfomation
    
}


// 로또 번호 및 회차 출력
func checkLottoNumber(round: Int) {
    
    var lottoNumber: String = ""
    let lottoInfomation = storeLotto()
 
    // 해당 하는 회차에 값이 있으면 회차 및 로또 번호 출력
    // 옵셔널 바인딩으로 안전하게 로또 번호 출력
    if let numbers = lottoInfomation["\(round)회차"] {
        
        for number in numbers {
            lottoNumber.append("\(number), ")
        }
        
        lottoNumber.removeLast()
        lottoNumber.removeLast()
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumber) 입니다.")
    }else{
        print("회차 정보가 없습니다.")
    }
}

checkLottoNumber(round : 3)


    
    
