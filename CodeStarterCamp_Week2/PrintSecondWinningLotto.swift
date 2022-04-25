//
//  PrintSecondWinningLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 정선아 on 2022/04/25.
//

import Foundation

//찾은 2회차의 로또 당첨 번호를 출력하는 함수
@discardableResult
func printSecondWinningLotto(from round: Int) -> String {
    let secondWinningLottoNumbersAsString = findSecondWinningLotto(round: round).sorted().map{ $0.description }
    let joinedNumbers = secondWinningLottoNumbersAsString.joined(separator: ", ")
    let message = "\(round)회차의 로또 당첨 번호는 " + joinedNumbers + " 입니다."
    print(message)
    return joinedNumbers
}

//5번 생성한 로또 당첨번호를 딕셔너리에 저장하는 함수
func saveWinningLottoNumbers() -> [String:Array<Int>] {
    let playLottoRound = 5
    let showRound = "회차"
    
    var winningLottoData: [String:Array<Int>] = [:]
    
    for round in 1...playLottoRound {
        let winningLottoDataMessage = "\(round)" + showRound
        winningLottoData[winningLottoDataMessage] = lottoNumbers
    }
    return winningLottoData
}

//2회차의 로또 당첨 번호를 찾는 함수
func findSecondWinningLotto(round: Int) -> [Int] {
    let roundMessage = "\(round)회차"
    let winningLottoData = saveWinningLottoNumbers()
    
    guard let secondWinningLottoNumbers = winningLottoData[roundMessage] else { return [] }
    return secondWinningLottoNumbers
}
