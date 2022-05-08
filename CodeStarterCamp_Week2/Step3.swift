//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 쌩 on 2022/04/30.
//

import Foundation


class Step3makeLotto {
    let step2Lotto = Step2CheckLotto()
    var lotteries = [String: String]()
    
    func makeAndSaveLotto(count: Int) {
        let number : String = "\(count)회차"
        let lottoWinningNumber = step2Lotto.addPickedLotto()
        let lottoSorted = lottoWinningNumber.sorted()
        let lotto = lottoSorted.map { String($0) }
        let completedLotto = lotto.joined(separator: ", ")
        lotteries[number] = completedLotto
    }
    
    func make5Lotteries(count: Int) {
        for count in 1...count {
            makeAndSaveLotto(count: count)
        }
    }
    
    func callSpecificLotto(number: Int) {
        make5Lotteries(count: 5)
        let numbers: String = "\(number)회차"
        guard let lottoNumbers = lotteries[numbers]
        else {
            return
        }
        let ment: String = "\(numbers)의 로또 당첨 번호는 \(lottoNumbers) 입니다."
        let lotto = lotteries
        if (lotto[numbers] != nil) {
            print(ment)}
            else {print("Error")}
        }
}
