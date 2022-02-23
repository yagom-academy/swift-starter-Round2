//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Week 2 Step 2
let generatedNumberSet = generateLottoNumbers(maxRange: 45, maxNumber: 6)
let myLottoNumbers: Set<Int> = [16, 4, 23, 24, 6, 3]

checkLottoWinner(lottoNumberSet: generatedNumberSet, myNumberSet: myLottoNumbers)

// Week 2 Step 3
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)
generateLottoNumbers(maxRange: 45, maxNumber: 6)

printWinningNumbersByRounds(roundNumber: 1)
printWinningNumbersByRounds(roundNumber: 2)

// 이런 기능도 한번 만들어 보고 싶었어요.
// 선택한 로또 번호를 원하는 회차와 비교해볼 수 있습니다.
checkLottoWinningByRound(round: 1, myNumberSet: myLottoNumbers)
checkLottoWinningByRound(round: 8, myNumberSet: myLottoNumbers) // 아직 추첨되지 않은 round 입력시 오류 메시지 출력
