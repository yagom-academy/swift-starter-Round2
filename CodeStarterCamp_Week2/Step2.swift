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
    print("\(winningLottoNumbers.sorted())")
    return winningLottoNumbers
}

func compareMylottoNumbersWithWinningLottoNumbers() -> Set<Int> {
    let winningLottoNumbers = makeWinningLottoNumbers()

    let matchNumbers = winningLottoNumbers.filter { myLottoNumbers.contains($0) }
    return matchNumbers
}

func convertArrayToString(array:Set<Int>) -> String {
    let ascending = array.sorted()
    let stringArray = ascending.map { String($0) }
    let result = stringArray.joined(separator: ", ")
    return result
}

func confirmMyLottoResult() {
    let matchNumbers = compareMylottoNumbersWithWinningLottoNumbers()
    if matchNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let result = convertArrayToString(array: matchNumbers)
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    }
}
