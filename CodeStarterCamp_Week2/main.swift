//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 내가 찍은 번호
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoFactory = LottoFactory(myLottoNumbers: myLottoNumbers)

// 로또 당첨 번호
let pickedNumber:[Int] = lottoFactory.LottoPicker()

let compareResult: [Int] = lottoFactory.LottoComparor(myLottoNumbers: myLottoNumbers, newlyPickedNumbers: pickedNumber)

// 비교 결과 출력
print(lottoFactory.printCompareResult(compareResult: compareResult))
