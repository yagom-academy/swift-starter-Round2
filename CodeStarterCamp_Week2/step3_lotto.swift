//
//  step3_lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 유넬리 on 2022/05/03.
//

import Foundation

//MARK: - 변수 선언) 회차별 로또 목록을 저장
var lottoList: [String: [Int]] = [:]

//MARK: - 변수 선언) 누적회차를 반영
var round: Int = lottoList.count

//MARK: - 함수 선언) 로또 1회를 생성 및 저장
func addLotto() {
    round += 1
    lottoList["\(round)회차"] = generateLotto()
}

//MARK: - 함수 선언) 로또 n회를 생성 및 저장
func addLottos(of times: Int) {
    for _ in 1...times {
        addLotto()
    }
}

//MARK: - 함수 선언) 회차별 로또 목록 중 특정 회차를 조회(ver.2)
func searchLottoHistory(number: Int) {
    print("\(number)회차의 로또 당첨 번호는 \(lottoList["\(number)회차"]?.map(String.init).joined(separator: ", ") ?? "아직 존재하지 않는 값") 입니다." )
}
