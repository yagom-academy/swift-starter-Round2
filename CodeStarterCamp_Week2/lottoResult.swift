//
//  lottoResult.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지은 on 2/17/24.
//

func matchLottoResult(myNumbers: Array<Int>, winningNumbers: Set<Int>) {
    var matchedNumbers = [Int]()
    
    for myNumber in myNumbers {
        for winningNumber in winningNumbers {
            if myNumber == winningNumber {
                matchedNumbers.append(myNumber)
                break
            }
        }
    }
    
    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers.map({ String($0) }).joined(separator: ", ")) 입니다!")
    }
}


func checkPastResults(round: Int) {
    if let selectedResult = lottoResults[round] {
        print("\(round)회차의 로또 당첨 번호는 \(selectedResult.map({ String($0) }).joined(separator: ", ")) 입니다.")
    }
    
}
