//
//  Helper.swift
//  CodeStarterCamp_Week2
//
//  Created by QL Jeong on 2023/08/25.
//

import Foundation

/// 로또번호 생성기.
/// 1 ~ 45 사이의 겹치지 않는 숫자 6개를 랜덤으로 뽑아서 반환.
/// - Returns: 정렬된 6개의 숫자 배열
func makeLottoNumbers() -> [Int] {
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
