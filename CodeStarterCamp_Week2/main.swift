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

//1~45사이의 랜덤한 당첨번호 6개를 Set에 생성하여 리턴하는 함수
func createLottoNumbers()->Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomInt: Int = Int.random(in: 1...45)
        lottoNumbers.insert(randomInt)
    }
    return lottoNumbers
}

//당첨번호 Set와 내가 선택한 복권번호 Array를 비교하여 당첨번호를 확인하고 결과를 출력하는 함수
func compareLottoNumbers(myLottoNums: [Int], winLottoNums: Set<Int>) {
    var compareNum: [Int] = [] //당첨된 번호를 넣어주기 위한 Array
    for myLottoNum in myLottoNums {
        if (winLottoNums.contains(myLottoNum)) {
            compareNum.append(myLottoNum)
        }
    }
    if (compareNum.count > 0) {
        let printResults = compareNum.map{String($0)}.joined(separator: ",")
        print("축하합니다! 겹치는 번호는 \(printResults) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let randomLottoNumbers: Set<Int> = createLottoNumbers() //당첨번호 6자리 Set 생성
print("이번회차 당첨 숫자 : \(randomLottoNumbers)") //생성된 당첨번호 6자리에 대한 정보 출력
compareLottoNumbers(myLottoNums: myLottoNumbers, winLottoNums: randomLottoNumbers) //생성된 당첨번호와 나의 복권번호 6자리를 비교하여 결과를 출력

