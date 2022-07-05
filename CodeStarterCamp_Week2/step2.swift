//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/06/29.
//

import Foundation

var round: Int = 1
var lottoHistory: [String: [Int]] = [String: [Int]]()
var lottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers(count: Int) {
    while lottoNumbers.count < count {
        let randomNumber: Int = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    let roundNumbers: [Int] = [Int](lottoNumbers)
    lottoHistory["\(round)회차"] = roundNumbers
    round += 1
}

func checkSameNumber() {
    var sameNumbers: [String] = []
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    
    for myLottoNumber in myLottoNumbers {
        for lottoNumber in lottoNumbers {
            if myLottoNumber == Int(lottoNumber) {
                sameNumbers.append(String(myLottoNumber))
            }
        }
    }
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.joined(separator: ", ")) 입니다!")
    }
}

func printRoundOfHistory(round:String) {
    if let historyNumbersOfRound: [Int] = lottoHistory[round] {
        var forSortRoundNumbers: [Int] = []
        var sortedRoundNumbers: [String] = []
        
        for historyNumberOfRound in historyNumbersOfRound {
            forSortRoundNumbers.append(historyNumberOfRound)
            forSortRoundNumbers.sort()
        }
        
        for forSortRoundNumber in forSortRoundNumbers {
            sortedRoundNumbers.append(String(forSortRoundNumber))
        }
        
        print("\(round)의 로또 당첨 번호는 \(sortedRoundNumbers.joined(separator: ", ")) 입니다.")
    }
}
