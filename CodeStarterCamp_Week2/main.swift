//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// 로또 당첨 번호 생성
/// - Returns: 랜덤으로 생성된 6개의 숫자가 포함된 Set 컬렉션타입
func drawNumbers() -> Set<Int> {
    var num: Int
    var lotto: Set<Int> = Set<Int>()
    
    while lotto.count < 6 {
        num = Int.random(in: 1...45)
        lotto.insert(num)
    }
    
    return lotto
}

/// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func guessLotto() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var lottoNumbers: Set<Int> = drawNumbers()
    var correctNumbers: [Int] = []
    
    for number in myLottoNumbers {
        if (lottoNumbers.contains(number)){
            correctNumbers.append(number)
        }
    }
    
    if correctNumbers.count > 0 {
        let string = correctNumbers.map{ String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(string) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

guessLotto()
