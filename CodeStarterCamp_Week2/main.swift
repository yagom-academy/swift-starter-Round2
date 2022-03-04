//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersList = [String: Set<Int>]()
var lottoCount = 0

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let random = Int.random(in: 1...45)
        lottoNumbers.insert(random)
    }
    lottoCount = lottoCount + 1
    lottoNumbersList["\(lottoCount)회차"] = lottoNumbers
    return lottoNumbers
}

func checkLottoNumbers() -> Set<Int> {
    let lottoNumbers = makeLottoNumbers()
    let myLottoNumbers = [1, 2, 3, 4, 5, 6]
    let winningLottoNumbers = lottoNumbers.intersection(myLottoNumbers)
    return winningLottoNumbers
}

func printLottoResult() {
    let winningLottoNumbers = checkLottoNumbers()
    guard winningLottoNumbers.isEmpty else {
        let arrayNumbers = [Int](winningLottoNumbers).sorted().map{String($0)}
        print("축하합니다! 일치하는 번호는 \(arrayNumbers.joined(separator: ", ")) 입니다!")
        return
    }
    print("아쉽지만 일치하는 번호가 없습니다.")
}

func playLotto() {
    printLottoResult()
}

playLotto()
playLotto()
playLotto()
playLotto()
playLotto()

func printLottoNumbersList(lottoCount: Int) {
    guard let list = lottoNumbersList["\(lottoCount)회차"] else {
        print("\(lottoCount)회차는 아직 추첨하지 않았습니다.")
        return
    }
    let arrayList = [Int](list).sorted().map{String($0)}
    print("\(lottoCount)회차의 로또 당첨 번호는 \(arrayList.joined(separator: ", ")) 입니다.")
}

printLottoNumbersList(lottoCount: 2)
printLottoNumbersList(lottoCount: 7)
