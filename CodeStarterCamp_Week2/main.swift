//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/25.
//

import Foundation

// MARK: - Round2 [STEP1] - `로또 당첨번호 생성기 순서도 생성하기`
/*
로또 당첨 번호를 생성했다면, 찍은 번호(뽑은 번호) 와 당첨 번호가 맞는지 확인
 - 6개의 번호를 다음과 같은 상수로 저장
 let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
 - 찍은 번호 와 로또 당첨 번호 일치하는지 검사
  => 번호 순서는 상관 없음
 
 TO DO
 1. Step1 순서도를 바탕으로 로또 당첨 번호 생성하는 함수를 생성
 2. 내가 찍은 번호 배열을 myLottoNumbers 변수? 상수? 맞나요..? 상수라고 초반에 언급하셔서..
 3. 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수를 생성
 
 
 */
//MARK: 로또 당첨번호 생성하는 함수

func generateLottoNumbers() -> [Int] {
    var winningLotteryNums = Set<Int>()
    
    while winningLotteryNums.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        winningLotteryNums.insert(randomNumber)
    }
    let sortedWinningNums: [Int] = Array(winningLotteryNums.sorted())
    return sortedWinningNums
}


//MARK: 로또 번호와 내 번호 맞추는 함수
let myLottoNumbers: [Int] = []
func guessWinningNumbers(_ myLottoNumbers: [Int], wonTheLotteryNums: [Int]) {
    let matchingNumbers = myLottoNumbers.filter { wonTheLotteryNums.contains($0) }
    
    if matchingNumbers.count > 0 {
        let resultNumbers =  matchingNumbers.map({ String($0) }).joined(separator: ", ")
        print("축하합니다. 겹치는 번호는 \(resultNumbers) 입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let generatedNums = generateLottoNumbers()
guessWinningNumbers([3, 17, 24, 36, 38, 45], wonTheLotteryNums: generatedNums)

let generatedNums2 = generateLottoNumbers()
guessWinningNumbers([1, 2, 3, 4, 5, 6], wonTheLotteryNums: generatedNums2)
