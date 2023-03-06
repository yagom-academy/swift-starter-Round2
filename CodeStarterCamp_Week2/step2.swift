//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Appledayz on 2023/03/04.
//

import Foundation

func compareMyLottoNumbers(myNumbers: Array<Int>) -> Void {
    let winningNumbers = getLottoNumbers()
    let sameNumbers: Set<Int> = winningNumbers.intersection(myNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    
    let string = sameNumbers.map { String($0) }.joined(separator: ", ")

    print("축하합니다! 겹치는 번호는 \(string) 입니다!")
}
