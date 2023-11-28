//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//나의 선택한 복권번호 6자리
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//당첨번호 6자리를 담을 Set 타입 컬렉션 선언
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()

//1~45사이의 랜덤한 당첨번호 6개를 Set에 생성하는 함수
func createLottoSet()->Set<Int> {
    var lottoSet: Set<Int> = Set<Int>()
    while lottoSet.count < 6 {
        let randomInt: Int = Int.random(in: 1...45)
        lottoSet.insert(randomInt)
    }
    return lottoSet
}

//당첨번호 Set와 내가 선택한 복권번호 Array를 비교하여 당첨번호를 확인하는 함수
func compareLottoSet(myLottoSet: [Int], winLottoSet: Set<Int>) {
    var compareNum: [Int] = [] //당첨된 번호를 넣어주기 위한 Array
    for myLottoNum in myLottoSet {
        if(winLottoSet.contains(myLottoNum)) {
            compareNum.append(myLottoNum)
        }
    }
    if(compareNum.count > 0) {
        print("축하합니다! 겹치는 번호는 \(compareNum) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

//당첨번호 6자리 Set 생성
let randomLottoSet: Set<Int> = createLottoSet()
print("이번회차 당첨 숫자 : \(randomLottoSet)")
compareLottoSet(myLottoSet: myLottoNumbers, winLottoSet: randomLottoSet)

