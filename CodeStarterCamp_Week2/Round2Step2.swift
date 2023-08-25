//
//  Round2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by QL Jeong on 2023/08/24.
//

import Foundation

/// 받은 숫자에서 겹치는 숫자 및 갯수를 확인 후 생성된 로또 번호와 비교하여 결과를 반환.
/// - Parameter pickNumbers: 6개의 중복하지 않는 숫자 값.
/// - Returns: 처리 결과 문자열.
func round2Step2Main(_ pickNumbers: [Int]) -> String {
    var result = isValidate(uniqueSixNumbers: pickNumbers).localizedDescription
    if result.count != 0 {
        return result
    }

    let hitNumbers = getHitNumbers(from: pickNumbers, withWin: makeLottoNumbers())
    if hitNumbers.count == 0 {
        result = "아쉽지만 겹치는 번호가 없습니다."
    }
    else {
        let hitString = hitNumbers
            .map( String.init )
            .joined(separator: ", ")

        result = "축하합니다! 겹치는 번호는 \(hitString) 입니다!"
    }

    return result
}

// MARK: - Private

/// 받은 숫자 검증 오류 코드.
fileprivate enum ValidateError: Error, LocalizedError {
    /// 정상
    case noError
    /// 숫자를 6개 선택 해 주십시오.
    case countSix
    /// 중복된 숫자가 선택 되었습니다.
    case unique

    var errorDescription: String? {
        switch self {
        case .noError:
            return ""
        case .countSix:
            return "숫자를 6개 선택 해 주십시오."
        case .unique:
            return "중복된 숫자가 선택 되었습니다."
        }
    }
}

/// 받은 숫자 검증.
/// - Parameter uniqueSixNumbers: 6개의 중복하지 않는 숫자 값.
/// - Returns: ValidateError 반환
fileprivate func isValidate(uniqueSixNumbers: [Int]) -> ValidateError {
    if uniqueSixNumbers.count != 6 {
        return ValidateError.countSix
    }

    let uniqueNumbers = Set(uniqueSixNumbers)
    if uniqueNumbers.count != uniqueSixNumbers.count {
        return ValidateError.unique
    }

    return ValidateError.noError
}

/// 선택한 로또 번호와 생성된 로또 번호를 비교하여 같은 수가 있는지 확인.
/// - Parameter pickNumbers: 6개의 중복하지 않는 숫자 값.
/// - Parameter winNumbers: 로또번호 생성기에서 만들어진 값.
/// - Returns: 매칭된 숫자 만을 반환, 없다면 빈 배열.
fileprivate func getHitNumbers(from pickNumbers: [Int], withWin winNumbers: [Int]) -> [Int] {
    var myLottoNumbers = Set(pickNumbers)
    myLottoNumbers = myLottoNumbers.intersection(winNumbers)
    return Array(myLottoNumbers)
}

/// 로또번호 생성기.
/// 1 ~ 45 사이의 겹치지 않는 숫자 6개를 랜덤으로 뽑아서 반환.
/// - Returns: 정렬된 6개의 숫자 배열
fileprivate func makeLottoNumbers() -> [Int] {
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
