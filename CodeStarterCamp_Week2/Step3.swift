//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 고혜지 on 1/3/24.
//

import Foundation

struct LottoManager {
  private let minLottoNumber = 1
  private let maxLottoNumber = 45
  private let numOfLottoNumbers = 6
  
  private var winningRecords: [UInt: Set<Int>] = .init()
  private var latestRound: UInt = 0
  
  mutating func generateLottoNumbers() {
    var winningNumbers: Set<Int> = .init()
    
    repeat {
      winningNumbers.insert(Int.random(in: minLottoNumber...maxLottoNumber))
    } while winningNumbers.count < numOfLottoNumbers
    
    latestRound += 1
    winningRecords[latestRound] = winningNumbers
  }
  
  func printAllWinningRecords() {
    let sortedWinningRecords = winningRecords.sorted { $0.key < $1.key }
    for (round, winningNumbers) in sortedWinningRecords {
      print(String(round) + "회차", winningNumbers)
    }
  }
  
  func printWinningRecordByRound(_ round: UInt) throws {
    let winningNumbers = try searchWinningRecordByRound(round)
    print("\(round)회차의 로또 당첨 번호는 \(winningNumbers.descriptionWithoutBrackets()) 입니다.")
  }
  
  func printLottoResult(with lottoNumbers: Set<Int>, at round: UInt) throws {
    try validateParameters()
    
    let winningNumbers = try searchWinningRecordByRound(round)
    let matchingNumbers = lottoNumbers.intersection(winningNumbers)
    if matchingNumbers.isEmpty {
      print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
      print("축하합니다! 겹치는 번호는 \(matchingNumbers.descriptionWithoutBrackets()) 입니다!")
    }
    
    func validateParameters() throws {
      guard lottoNumbers.count == numOfLottoNumbers, lottoNumbers.allSatisfy({ minLottoNumber...maxLottoNumber ~= $0 }) else { throw LottoError.invalidLottoNumber }
      guard 1...latestRound ~= round else { throw LottoError.nonExistentRound }
    }
  }
  
  private func searchWinningRecordByRound(_ round: UInt) throws -> Set<Int> {
    guard let winningNumbers = winningRecords[round] else { throw LottoError.nonExistentRound }
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
