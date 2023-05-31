//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> [Int] {
    var numbers: Set<Int> = []
    
    while numbers.count < 6 {
        if let number = (1...45).randomElement() {
            numbers.insert(number)
        }
    }
    
    let winNumbers = Array(numbers).sorted()
    
    storeWinNumbers(winNumbers)
    
    return winNumbers
}

func storeWinNumbers(_ numbers: [Int]) {
    lottoHistory["\(history)회차"] = numbers.sorted()
    history += 1
}

func checkLottoNumbers(_ winNumbers: [Int], with myNumbers: [Int]) -> String {
    
    print("당첨 번호 \(winNumbers)")
    print("내가 찍은 번호 \(myNumbers)")
    
    let failMessage = "아쉽지만 겹치는 번호가 없습니다."
    //1번 방법
//    let winner = Array(Set(winNumbers).intersection(Set(myNumbers))).sorted()
    //2번 방법
    var winner = [Int]()
    for number in winNumbers {
        if myNumbers.contains(where: { $0 == number }) {
            winner.append(number)
        }
    }
    
    guard winner.isEmpty == false else { return failMessage }
    
    var winnerMessage = "축하합니다! 겹치는 번호는"
    for number in winner {
        winnerMessage += " \(number),"
    }
    winnerMessage.removeLast()
    winnerMessage += " 입니다!"
    
    return winnerMessage
}

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

var history = 1
var lottoHistory = [String: [Int]]()

//print(checkLottoNumbers(makeLottoNumbers(), with: myLottoNumbers))


func getWinNumber(in number: Int) -> String {
    
    var failureMessage = "\(number)회차는 아직 진행되지 않았습니다."
    guard let winNumber = lottoHistory["\(number)회차"] else { return failureMessage }
    
    var message = "\(number)회차의 로또 당첨 번호는"
    for number in winNumber.sorted() {
        message += " \(number),"
    }
    message.removeLast()
    message += " 입니다"
    
    return message
}

//1~5회차 로또 당첨번호 생성.
(1...5).forEach { _ in
    let _ = makeLottoNumbers()
}

//각 회차별 로또당첨번호 확인.
(1...6).forEach { print(getWinNumber(in: $0)) }
