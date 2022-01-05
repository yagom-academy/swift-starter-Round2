//
//  LottoNumberChecker.swift
//  CodeStarterCamp_Week2
//
//  Created by 유지수 on 2022/01/05.
//

import Foundation

func checkWinningLottoNumbers(_ lottoNumbers: Set<Int>, _ winningLottoNumbers: Set<Int>) {
    debugPrint("당첨번호: \(winningLottoNumbers) 입니다.")
    debugPrint("내번호: \(lottoNumbers) 입니다.")
    let myWinningLottoNumbers = lottoNumbers.intersection(winningLottoNumbers)

    printResult(result: myWinningLottoNumbers)
}

private func printResult(result: Set<Int>) {
    guard !result.isEmpty else {
        debugPrint("당첨번호가 없어요!")
        return
    }

    debugPrint("내 당첨번호는: \(result.sorted()) 입니다.")
}
