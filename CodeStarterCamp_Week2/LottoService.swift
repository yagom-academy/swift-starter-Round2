//
//  LottoService.swift
//  CodeStarterCamp_Week2
//
//  Created by ByungHoon Ann on 2022/10/26.
//

import Foundation

let myLottoNumbers = [1, 2, 3, 4, 5, 6] // 내가 찍은 당첨 번호

/// 당첨 번호  1개 생성
/// - Returns: 1 ~ 45 사이의 무작위 로또 번호 생성
func createLottoNumber() -> Int {
    let random = Int.random(in: 1...45)
    return random
}

/// 로또 번호 중복 검사
/// - Parameter lottoNumber: 검사할 로또 번호
/// - Returns: 중복되면 true, 없으면 false 를 리턴
func checkOverlapLottoNumber(with lottoNumber: Int, lottoNumbers: [Int]) -> Bool {
    return lottoNumbers.contains(lottoNumber)
}

/// 당첨 번호 6개가 만들어 질 때까지 번호를 생성 -> 검사를 반복
func createNewLottoNumbers() -> [Int] {
    var lottoNumbers = [Int]()
    while lottoNumbers.count < 6 {
        let lotto = createLottoNumber()
        if checkOverlapLottoNumber(with: lotto, lottoNumbers: lottoNumbers) == false {
            lottoNumbers.append(lotto)
        }
    }
    return lottoNumbers
}

/// 내가 찍은 번호와 당첨번호를 비교하여 일치한 번호만 반환하는 함수
/// - Returns: 일치하는 번호가 없으면 빈 배열을 반환
///  피드백 내용에 있던 고차함수 filter 사용
func checkSameLottoNumber(with lottoNumbers: [Int]) -> [Int] {
    return myLottoNumbers.filter { checkOverlapLottoNumber(with: $0, lottoNumbers: lottoNumbers) }
}

/// 일치하는 번호를 받아서 당첨여부를 출력하는 함수
/// - Parameter lottoNumbers: 당첨된 로또 번호 배열
func printLottoResult(with lottoNumbers: [Int]) {
    if lottoNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else{
        var text = [String]()
        for i in lottoNumbers {
            text.append("\(i)")
        }
        print("축하합니다! 겹치는 번호는 \(text.joined(separator: ", ")) 입니다!")
    }
}
