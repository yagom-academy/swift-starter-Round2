//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers = [Int]()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

/// 당첨 번호  1개 생성
/// - Returns: 1 ~ 45 사이의 무작위 로또 번호 생성
func createLottoNumber() -> Int{
    let random = Int.random(in: 1...45)
    return random
}

/// 로또 번호 중복 검사
/// - Parameter lottoNumber: 검사할 로또 번호
/// - Returns: 중복되면 true, 없으면 false 를 리턴
func checkOverlapLottoNumber(with lottoNumber: Int) -> Bool {
    return lottoNumbers.contains(lottoNumber)
}

/// 당첨 번호 6개가 만들어 질 때까지 번호를 생성 -> 검사를 반복
func createNewLottoNumbers() {
    while lottoNumbers.count < 6 {
        let lotto = createLottoNumber()
        if checkOverlapLottoNumber(with: lotto) == false {
            lottoNumbers.append(lotto)
        }
    }
}

/// 내가 찍은 번호와 당첨번호를 비교하여 일치한 번호만 반환하는 함수
/// - Returns: 일치하는 번호가 없으면 빈 배열을 반환
func checkSameLottoNumber() -> [Int] {
    var sameLottoNumbers = [Int]()
    for i in myLottoNumbers {
        if checkOverlapLottoNumber(with: i) == true {
            sameLottoNumbers.append(i)
        }
    }
    return sameLottoNumbers
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

createNewLottoNumbers() // 새로운 당첨 번호 생성

let sameNumbers = checkSameLottoNumber() // 내 번호와 당첨번호 비교
printLottoResult(with: sameNumbers)
