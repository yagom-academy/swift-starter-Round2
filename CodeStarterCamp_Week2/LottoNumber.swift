//
//  LottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by NAMU on 2022/02/26.
//

import Foundation

//MARK: - Step2
func makeLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = []
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
} // 6개의 랜덤값을 set 컬렉션에 넣고 리턴하는 함수

func compareLottoNumber(_ myNumber: [Int], with lottoNumber: Set<Int>) {
    let sameNumber = lottoNumber.intersection(myNumber).sorted() //전달받은 로또번호와 내가 선택한 번호의 교집합
    var mergeSameNumber: String
    if sameNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        mergeSameNumber = String(sameNumber[0])
        if sameNumber.count > 1 {
            for index in 1...sameNumber.count - 1 {
                mergeSameNumber += "," + String(sameNumber[index])
            } // 번호를 []에서 빼서 출력하기 위함.
        }
        print("축하합니다! 겹치는 번호는 \(mergeSameNumber) 입니다.")
    }
} // 내가 선택한 번호와 당첨 번호를 비교해서 출력해주는 함수
