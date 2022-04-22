//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoBox() -> Array<Int> {
    var lottoBox: Set<Int> = Set<Int>()
    
    while lottoBox.count < 6 {
        let randomNum: Int = Int.random(in: 1...45)
        
        lottoBox.insert(randomNum)
    }
    return Array(lottoBox)
}


func matchLotto(with lottoBox: () -> Array<Int>) {
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    let winningLottoNumbersBox: Array<Int> = myLottoNumbers.filter { lottoBox().contains($0) }
    let winningLottoNumbers: String = winningLottoNumbersBox.map { String($0) }.joined(separator: ", ")

    if winningLottoNumbersBox.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(winningLottoNumbers) 입니다!")
    }
}

matchLotto(with: generateLottoBox)
