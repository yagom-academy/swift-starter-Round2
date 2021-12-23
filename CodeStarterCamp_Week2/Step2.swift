//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by hyogang on 2021/12/23.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeWinningLottoNumbers() -> Set<Int> {
    var winningLottoNumbers = Set<Int>()
    
    while winningLottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        winningLottoNumbers.insert(lottoNumber)
    }
    return winningLottoNumbers
}

func compareMylottoNumbersWithWinningLottoNumbers() -> Set<Int> {
    let winningLottoNumbers = makeWinningLottoNumbers()
    
    let matchNumbers = winningLottoNumbers.filter{myLottoNumbers.contains($0)}
    return matchNumbers
}

func convertArrayToString(arr:Set<Int>) -> String {
    // 오름차순으로 정렬
    let ascending = arr.sorted(by: <)
    // Int배열을 String배열로 변환
    let strArr = ascending.map { String($0) }
    return strArr.joined(separator: ", ")
}

func confirmMyLottoResult() {
    let matchNumbers = compareMylottoNumbersWithWinningLottoNumbers()
    if matchNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let result = convertArrayToString(arr: matchNumbers)
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    }
}
