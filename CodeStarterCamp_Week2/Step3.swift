//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 고혜지 on 1/3/24.
//

import Foundation

class LottoManager {
  
  private var winningRecords: Dictionary<String, Set<Int>> = .init()
  private var latestRound: UInt = 0
  
  func generateLottoNumbers() {
    var winningNumbers: Set<Int> = .init()
    
    repeat {
      winningNumbers.insert(Int.random(in: 1...45))
    } while winningNumbers.count != 6
    
    self.latestRound += 1
    self.winningRecords["\(self.latestRound)회차"] = winningNumbers
  }
  
  func printAllWinningRecords() {
    let sortedWinningRecords = self.winningRecords.sorted { $0.key < $1.key }
    for (round, winningNumbers) in sortedWinningRecords {
      print(round, winningNumbers)
    }
  }
  
  func printWinningRecordByRound(_ round: UInt) throws {
    let winningNumbers = try self.searchWinningRecordByRound(round)
    print("\(round)회차의 로또 당첨 번호는 \(winningNumbers.descriptionWithoutBrackets()) 입니다.")
  }
  
  func printLottoResult(with lottoNumbers: Set<Int>, round: UInt) throws {
    try validateParameters()
    
    let winningNumbers = try self.searchWinningRecordByRound(round)
    let matchingNumbers = lottoNumbers.intersection(winningNumbers)
    if matchingNumbers.isEmpty {
      print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
      print("축하합니다! 겹치는 번호는 \(matchingNumbers.descriptionWithoutBrackets()) 입니다!")
    }
    
    func validateParameters() throws {
      guard lottoNumbers.count == 6, lottoNumbers.allSatisfy({ 1...45 ~= $0 }) else { throw LottoError.invalidLottoNumber }
      guard 1...latestRound ~= round else { throw LottoError.nonExistentRound }
    }
  }
  
  private func searchWinningRecordByRound(_ round: UInt) throws -> Set<Int> {
    guard let winningNumbers = self.winningRecords[String(round) + "회차"] else { throw LottoError.nonExistentRound }
    return winningNumbers
  }
  
}

enum LottoError: Error {
  case invalidLottoNumber
  case nonExistentRound
}

extension LottoError: LocalizedError {
  var errorDescription: String? {
    switch self {
    case .invalidLottoNumber:
      return "로또 번호는 1~45 사이의 숫자 6개로 이루어져야 합니다."
    case .nonExistentRound:
      return "존재하지 않는 로또 회차입니다."
    }
  }
}

extension Set<Int> {
  func descriptionWithoutBrackets() -> String {
    return self.map { String($0) }.joined(separator: ", ")
  }
}
