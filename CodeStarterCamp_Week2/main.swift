//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

//Step 2
let myLottoNumbers: [Int] = [1, 16, 19, 23, 33, 45]
var recentLottoWinningNumbers: Set<Int> = makeLottoNumbers()

matchLottoResult(myNumbers: myLottoNumbers, winningNumbers: recentLottoWinningNumbers)

//Step 3
var lottoResults = [Int: Set<Int>]()
var roundNumber = 0

print("찾고싶은 회차의 숫자를 입력해주세요")
guard let number = readLine(), let selectedRound = Int(number) else {
    fatalError("숫자로 입력해주세요")
}

for _ in 1...10 {
    roundNumber += 1
    lottoResults[roundNumber] = makeLottoNumbers()
}

checkPastResults(of: selectedRound)
