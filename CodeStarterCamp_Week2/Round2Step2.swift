//
//  Round2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by QL Jeong on 2023/08/24.
//

import Foundation

// 6개 숫자를 받어 겹치는 번호를 확인후 결과 문자열 반환
func round2Step2Main(_ pickNumbers: [Int]) -> String {
    if pickNumbers.count != 6 {
        return "숫자를 6개 선택 해 주십시오."
    }

    var myLottoNumbers = Set(pickNumbers)
    if myLottoNumbers.count != pickNumbers.count {
        return "중복된 숫자가 선택 되었습니다."
    }

    myLottoNumbers = myLottoNumbers.intersection(getLottoNumbers())
    if myLottoNumbers.count == 0 {
        return "아쉽지만 겹치는 번호가 없습니다."
    }

    let hitNumbers = myLottoNumbers
        .map( String.init )
        .joined(separator: ", ")

    return "축하합니다! 겹치는 번호는 \(hitNumbers) 입니다!"
}

// MARK: - Private

// 1 ~ 45 사이의 겹치지 않는 숫자 6개를 랜덤으로 뽑아서 반환
fileprivate func getLottoNumbers() -> [Int] {
    var result = [Int]()
    var number = 0

    repeat {
        number = Int.random(in: 1...45)
        if result.contains(number) {
            continue
        }
        result.append(number)
    } while result.count < 6
    result.sort()

    return result
}
