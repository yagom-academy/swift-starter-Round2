//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeWinningNumbers() -> Set<Int> { // 당첨번호 만들기
    var result: Set<Int> = Set<Int>() // 중복 x
    let lottoSize: Int = 6
    
    while result.count != lottoSize { // 로또번호 여섯개가 모두 뽑힐 때까지
        result.insert(Int.random(in: 1...45)) // 중복이면 추가 x
    }
    
    return result
}

func checkLottoNumbers(myNumbers: Set<Int>, answer: Set<Int>) { // 정답 확인
    let result: Set<Int> = myNumbers.intersection(answer) // 교집합.
    
    if result.count == 0 { // 한개도 맞추지 못했을 때
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else { // 하나라도 맞췄을 때
        print("축하합니다. 겹치는 번호는 \(result) 입니다.")
    }
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6] // 내가 찍은 번호
let winningNumbers = makeWinningNumbers()
checkLottoNumbers(myNumbers: myLottoNumbers, answer: winningNumbers)

