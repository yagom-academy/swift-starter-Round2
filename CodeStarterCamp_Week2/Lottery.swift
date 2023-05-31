//
//  Lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by ChoiKwangWoo on 2023/05/23.
//

import Foundation

func getLottoNumbers() -> [Int] {
    var lottoNumbers = Set<Int>()
    while lottoNumbers.count != 6, let randomNumber = (1...45).randomElement() {
        lottoNumbers.insert(randomNumber)
    }
    return Array(lottoNumbers)
}

func checkLottoNumber(picked: [Int], goal: [Int]) {
    let sameNumbers: [Int] = goal.filter{ picked.contains($0) }
    guard sameNumbers.count > 0 else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    let sameNumberList = sameNumbers.sorted().map{ String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(sameNumberList) 입니다!")
}

var lottoStorage: [String: [Int]] = [:]

func lottoManager() {
    print("로또 번호 생성하려면 1, 로또 번호를 확인하려면 2, 종료하려면 X를 입력하세요.")
    guard let selectedNumber = readLine() else {
        print("문자를 입력해주세요!")
        lottoManager()
        return
    }
    
    guard ["1", "2", "x", "X"].contains(selectedNumber) else {
        print("1, 2, X 중에서 선택해주세요!")
        lottoManager()
        return
    }
    
    if selectedNumber == "1" {
        let lottoRound = lottoStorage.count + 1
        let lottoNumbers = getLottoNumbers()
        lottoStorage["\(lottoRound)회차"] = lottoNumbers
        print("\(lottoRound)회차 로또가 저장되었습니다!\n")
        lottoManager()
    } else if selectedNumber == "2" {
        printTargetLottoNumber()
    } else {
        print("종료합니다!")
        return
    }
}

func printTargetLottoNumber() {
    print("원하는 회차를 입력해주세요!")
    guard let selectedRound = readLine() else {
        print("숫자를 입력해주세요!\n")
        printTargetLottoNumber()
        return
    }
    
    guard Int(selectedRound) != nil else {
        print("숫자를 입력해주세요!")
        printTargetLottoNumber()
        return
    }
    
    guard let targetLottoRound = lottoStorage["\(selectedRound)회차"] else {
        print("\(selectedRound)회차의 로또번호가 없습니다.\n")
        lottoManager()
        return
    }
    let targetLottoRoundList = targetLottoRound.sorted().map{ String($0) }.joined(separator: ", ")
    print("\(selectedRound)회차의 로또 당첨 번호는 \(targetLottoRoundList) 입니다.\n")
    lottoManager()
}
