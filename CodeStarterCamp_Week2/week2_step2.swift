//
//  week2_step2.swift
//  CodeStarterCamp_Week2
//
//  Created by jjudy on 2023/09/04.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoSet: Set<Int> = Set()
    
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1...45))
    }
    
    return lottoSet
}

func checkSameLottoNumbers(myLottoNumbers: [Int], setLottoNumbers: Set<Int>) {
    var sameNumArray: Array<Int> = [Int]()
    
    for num in myLottoNumbers {
        if (setLottoNumbers.contains(num)) {
            sameNumArray.append(num)
        }
    }
    
    // sameNumArray.count > 0 과 같은 의미로 isEmpty를 부정문으로 사용해 조건 설정
    if(!sameNumArray.isEmpty) {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(sameNumArray.map{String($0)}.joined(separator:", "), terminator: "")
        print(" 입니다!")
        
        // 위 표현 한 줄로 작성해보기
        print("축하합니다! 겹치는 번호는", sameNumArray.map{String($0)}.joined(separator: ", "), "입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}
