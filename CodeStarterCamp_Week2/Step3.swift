//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 쌩 on 2022/04/30.
//

import Foundation


class Step3makeLotto {
    let step2Lotto = Step2CheckLotto()
    
    var count : Int = 0
    var lottoDictionary = [String: String]()
    
    func makeAndSaveLotto() {
        count = count + 1
        var number : String = ""
        number = "\(count)회차"
        let lotteryWinningNumber = step2Lotto.addPickedLotto()
        let lotterySetSorted = lotteryWinningNumber.sorted()
        let lotteryArray = lotterySetSorted.map { String($0) }
        let setToStringLotterry = lotteryArray.joined(separator: ", ")
        var lotto: String = ""
        lotto = setToStringLotterry + lotto
        lottoDictionary["\(number)"] = lotto
    }
    
    func makeLotto() {
        for _ in 1...5 {
            makeAndSaveLotto()
        }
    }
    
    func callSpecificLotto(number: Int) {
        makeLotto()
        let numbers: String
        numbers = "\(number)회차"
        var ment: String = ""
        ment = "\(numbers)의 로또 당첨 번호는 \(lottoDictionary[numbers]!) 입니다."
        print(ment)
    }
}
