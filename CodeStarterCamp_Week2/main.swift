//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/*
 Todo
 1. Step1의 순서도를 바탕으로 로또 당첨 번호를 생성하는 함수를 생성합니다.
 2. 내가 찍은 번호 배열을 myLottoNumbers 변수에 할당합니다.
 3. 찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수를 생성합니다.
 4. 겹치는 숫자 여부에 따라 메세지 출력합니다.
 */

let lottoNumbers = getLottoNumbers()
let myLottoNumbers = [6, 7, 19, 35, 37, 44]

let lottoResult = checkLottoNumber(myNumbers: myLottoNumbers, goal: lottoNumbers)

if lottoResult.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(lottoResult.sorted().map{ String($0) }.joined(separator: ", ")) 입니다!")
}
