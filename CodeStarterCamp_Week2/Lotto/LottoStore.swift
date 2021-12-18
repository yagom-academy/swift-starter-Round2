//
//  LottoStore.swift
//  CodeStarterCamp_Week2
//
//  Created by 조민호 on 2021/12/15.
//

import Foundation

struct LottoStore {
    let lottoNumberGenerator: LottoNumberGenerator
    let lottoWinningNumber: [Int]
    
    private(set) var myLottoWinningNumbers: [Int] = []
    private(set) var lottoWinningNumbersHistory: Dictionary<String, [Int]> = [:]
    
    init(lottoNumberGenerator: LottoNumberGenerator) {
        self.lottoNumberGenerator = lottoNumberGenerator
        self.lottoWinningNumber = lottoNumberGenerator.generateLottoNumbers()
    }
    
    mutating func findMyLottoWinningNumbers() {
        self.myLottoWinningNumbers = LottoOptions
            .myLottoNumbers
            .filter { lottoWinningNumber.contains($0) }
        
        printMyLottoWinningNumbers()
    }
    
    mutating func findLottoWinningNumbersHistory(round: Int) {
        for round in LottoOptions.roundRange {
            lottoWinningNumbersHistory["\(round)회차"] = lottoNumberGenerator.generateLottoNumbers()
        }
        
        printLottoWinningNumbersHistory(round)
    }
    
    private func printMyLottoWinningNumbers() {
        if myLottoWinningNumbers.isEmpty == false {
            print("축하합니다! 겹치는 번호는 \(convertToString(myLottoWinningNumbers)) 입니다!")
        }
        
        if myLottoWinningNumbers.isEmpty {
            print("아쉽지만 겹치는 번호가 없습니다.")
        }
    }
    
    private func printLottoWinningNumbersHistory(_ round: Int) {
        print("\(round)회차의 로또 당첨 번호는 \(convertToString(lottoWinningNumbersHistory["\(round)회차"])) 입니다.")
    }
}

extension LottoStore {
    private func convertToString(_ lottoWinningNumbers: [Int]) -> String {
        lottoWinningNumbers
            .map{ String($0) }
            .joined(separator: ", ")
    }
    
    private func convertToString(_ lottoWinningNumbers: [Int]?) -> String {
        guard let lottoWinningNumbers = lottoWinningNumbers else {
            return "로또가 생성되지 않았습니다. 다시 시도해주세요"
        }

        return lottoWinningNumbers
            .map{ String($0) }
            .joined(separator: ", ")
    }
}
