//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


func saveLotteryNumber(roundNumber: Int, pickedNumber: Int){
    if pickedNumber < roundNumber {
        print("로또를 추첨한 횟수가 원하는 로또 회차의 횟수보다 적습니다")
    }
    else{
        let round: String = "\(roundNumber)회차"
        let lotteryDictionary: [String: Array<Int>] = picktimes(times: pickedNumber)
        if let unwrappedLotteryNumber = lotteryDictionary[round] {
            let unwrappedSet = Set(unwrappedLotteryNumber)
            let joinedLottery = returnJoinedLotteryResult(unwrappedSet)
            print("\(round)의 로또 당첨 번호는 \(joinedLottery)입니다.")
        }
    }
}

func picktimes(times: Int) -> Dictionary<String, Array<Int>> {
    var lotteryNumberDictionary: [String: Array<Int>] = [String: Array<Int>]()
    for pickCounter in 1...times {
        let arrayLottery: Array<Int> = Array(pickLotteryNumber())
        let pickTime: String = "\(pickCounter)회차"
        lotteryNumberDictionary[pickTime] = arrayLottery
    }
    return lotteryNumberDictionary
}

saveLotteryNumber(roundNumber: 2, pickedNumber: 5)


func pickLotteryNumber() -> Set<Int> {
    var lotteryNumberSet: Set<Int> = Set<Int>()
    while lotteryNumberSet.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lotteryNumberSet.insert(randomNumber)
    }
    return lotteryNumberSet
}

let winningLottoNumbers: Set<Int> = pickLotteryNumber()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func returnJoinedLotteryResult(_ lotteryResult: Set<Int>) -> String {
    var arrayLotteryResult: Array<String> = []
    for lotteryNumber in lotteryResult {
        arrayLotteryResult.append(String(lotteryNumber))
    }
    let joinedLotteryResult: String = arrayLotteryResult.joined(separator: ", ")
    return joinedLotteryResult
}

func compareLotteryNumber(_ winningLottoNumbers: Set<Int>, with myLottoNumbers: Set<Int>) {
    let lotteryResult: Set<Int> = winningLottoNumbers.intersection(myLottoNumbers)
    if lotteryResult.count != 0 {
        let sameLotteryNumber = returnJoinedLotteryResult(lotteryResult)
        print("축하합니다! 겹치는 번호는 \(sameLotteryNumber) 입니다!")
    }
    else{
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}



