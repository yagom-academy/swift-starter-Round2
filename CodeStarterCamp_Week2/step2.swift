//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Appledayz on 2023/03/04.
//

import Foundation

func compareMyLottoNumbers(myNumbers: Array<Int>) -> Void {
    let winningNumbers = createLottoNumbers()
    let sameNumbers: Set<Int> = winningNumbers.intersection(myNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    
    print("축하합니다! 겹치는 번호는 \(sameNumbers.description.trimmingCharacters(in: ["[", "]"])) 입니다!")
}
