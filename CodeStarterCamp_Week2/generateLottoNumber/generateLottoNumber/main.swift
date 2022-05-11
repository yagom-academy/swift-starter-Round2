//
//  main.swift
//  generateLottoNumber
//
//  Created by insu on 2022/05/05.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 13, 45, 5, 16]

//MARK: - 로또번호 생성
func generateLottoNumber() -> Set<Int> {
    var winnerNumber: Set<Int> = Set<Int>()
    while winnerNumber.count < 6 {
        winnerNumber.insert(Int.random(in: 1...45))
    }
    return winnerNumber
}

//MARK: - 선택한 로또번호와 당첨번호를 비교해서 출력해주는 함수
func matchLottoNumber(_ myLottoNumbers: [Int], with winnerNumber: Set<Int>) {
    let sameNumber = winnerNumber.intersection(myLottoNumbers).sorted()
    var castSameNumber: String
    if sameNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        castSameNumber = String(sameNumber[0])
        if sameNumber.count > 1 {
            for i in 1..<sameNumber.count {
                castSameNumber += ", " + String(sameNumber[i])
            }
        }
        print("축하합니다! 겹치는 번호는 \(castSameNumber) 입니다.")
    }
}

matchLottoNumber(myLottoNumbers, with: generateLottoNumber())
