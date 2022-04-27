//
//  
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoInformation: Dictionary<String, [Int]> = [String: [Int]]()

func generateLottoNumbers() -> Array<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return Array(lottoNumbers)
}

func checkLottoNumbers(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) {
    let sortedLottoNumbers = lottoNumbers.sorted()
    var winnedLottoNumbers: [Int] = []
    
    for number in 0...5 {
        if sortedLottoNumbers.contains(myLottoNumbers[number]) {
            winnedLottoNumbers.append(myLottoNumbers[number])
        }
    }
    if winnedLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let winnedLottoNumberToString = winnedLottoNumbers.map{ String($0)}
        print("축하합니다! 겹치는 번호는 \(winnedLottoNumberToString.joined(separator: ",")) 입니다!")
    }
}

func saveLottoformation(lottoRound: Int) -> () {
    for number in 1...lottoRound {
        lottoInformation["\(number)회차"] = generateLottoNumbers()
    }
}

func findLottoRound(round: String) {
    if let printLottoNumbers = lottoInformation["\(round)"] {
        let printLottoNumbersToStringValue = printLottoNumbers.sorted().map{ String($0)}.joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(printLottoNumbersToStringValue) 입니다.")
    } else {
        print("회차 정보를 올바르게 입력해주세요")
    }
}

saveLottoformation(lottoRound: 5)
findLottoRound(round: "2회차")
//generateLottoNumbers()
//checkLottoNumbers(lottoNumbers: generateLottoNumbers(), myLottoNumbers: myLottoNumbers)


