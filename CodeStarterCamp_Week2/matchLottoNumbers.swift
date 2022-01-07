//
//  matchLottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by hoon on 2021/12/29.
//

let myLottoNumbers: Set<Int> = [1, 10, 20, 30, 40, 45]
var winningNumbers: Set<Int> = []
var winningNumbersLogCount = 0

func makeDeduplicatedNumbers() {
    while winningNumbers.count < 6 {
        let deduplicatedNumber = Int.random(in: 1...45)
        winningNumbers.insert(deduplicatedNumber)
    }
    winningNumbersLogCount += 1
    saveWinningNumbers()
}

func compareMyLottoNumbers(myLottoNumbers: Set<Int>, with winningNumbers: Set<Int>) -> Set<Int> {
    let sameNumbers: [Int] = winningNumbers.intersection(myLottoNumbers).sorted()
    
    return Set(sameNumbers)
}

func convertArrayToString(someArray: Set<Int>) -> String {
    let convertedArrayToString = someArray.map{ String($0) }.joined(separator: ", ")
    
    return convertedArrayToString
}

func printWinningNumbers() {
    let convertedWinningNubmers = convertArrayToString(someArray: winningNumbers)
    print("당첨 번호 : \(convertedWinningNubmers)")
}

func printSameNumbers(myLottoNumbers: Set<Int>, with winningNumbers: Set<Int>) {
    let sameNumbers: Set<Int> = compareMyLottoNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let convertedSameNumbersToString = convertArrayToString(someArray: sameNumbers)
        print("축하합니다! 겹치는 번호는 \(convertedSameNumbersToString) 입니다!")
    }
}

func matchLottoNumbers() {
    printWinningNumbers()
    printSameNumbers(myLottoNumbers: myLottoNumbers, with: winningNumbers)
    winningNumbers = []
}

func makeLottoNumbers(round: Int) {
    for _ in 1...round {
        makeDeduplicatedNumbers()
        matchLottoNumbers()
    }
}
