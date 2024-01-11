//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Error enum
enum MismatchError: Error {
    case nonexistence
}

// 로또 번호 생성 함수
func makeLottoNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = []
    let candidates: [Int] = Array(1...45).shuffled()
    
    
    winningNumbers = Set(candidates.prefix(6))
    currentRound += 1
    historyOfLotto["\(currentRound)회차"] = Array(candidates.prefix(6))

    return winningNumbers
}

// 로또 번호 당첨 검증 함수
func verifyWinningNumbers(userNumbers: Set<Int>, officialNumbers: Set<Int>) throws {
    
    let intersectionLotto: Set<Int> = userNumbers.intersection(officialNumbers)
    let matchLotto: [String] = intersectionLotto.map(String.init)
    let matchLottoString: String = matchLotto.joined(separator: ",")
    
    guard intersectionLotto.count > 0 else {
        throw MismatchError.nonexistence
    }
    
    print("축하합니다! 겹치는 번호는 \(matchLottoString) 입니다! ")
}

// 로또 당첨 확인함수
func checkMyLotto(myNumbers: Set<Int>, realNumbers: Set<Int>){
    
    do {
        try verifyWinningNumbers(userNumbers: myNumbers, officialNumbers: realNumbers)
        
    } catch MismatchError.nonexistence {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } catch {
        print("알 수 없는 오류")
    }
}

// 로또 회차별 번호 조회 함수
func showLottoHistory(_ round: Int = 0){
    guard round > 0 else {
        print(historyOfLotto)
        return
    }
    
    let numbers: [Int] = historyOfLotto["\(currentRound)회차"] ?? []
    let numbersToString: String = numbers.sorted().map(String.init).joined(separator: ",")
    
    print("\(numbers)회차의 로또 당첨 번호는 \(numbersToString)입니다.")
    
}

// 로또 역사 변수
var currentRound: Int = 0
var historyOfLotto: [String:[Int]] = [:]

// 오피셜 로또 변수
var lottoRound: Int = 0
var recordOfficialLotto: [String:[Int]] = [:]

// 나의 로또 변수
//let lotto: Set<Int> = makeLottoNumbers()
//let myLottoNumbers: Set<Int> = [39, 12, 15, 23, 45, 9]
//checkMyLotto(myNumbers: myLottoNumbers, realNumbers: lotto)

makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()

showLottoHistory(1)
