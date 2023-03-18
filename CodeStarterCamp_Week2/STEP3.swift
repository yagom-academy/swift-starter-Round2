//
//  STEP3.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2023/03/19.
//

import Foundation

var lottoWinnerTimeAndNumbers: [String: [Int]] = [:]

func makeLottoWinnerTimeAndNumbers(pickTime: String) {
	var randomNumbers: Set<Int> = []
	var times: Int = 0
	
	for _ in 0... {
		let randomNumber = Int.random(in: 1...45)
		if !randomNumbers.contains(randomNumber) {
			randomNumbers.insert(randomNumber)
		}
		
		if randomNumbers.count == 6 {
			times += 1
			
			let lottoNumbers = Array(randomNumbers)
			
			let key = String(times) + "회차"
			
			lottoWinnerTimeAndNumbers = [key: lottoNumbers]
			
			if let winnerLottoNumbers = lottoWinnerTimeAndNumbers[pickTime] {
				let winnerLottoNumbers = winnerLottoNumbers.map { String($0) }.joined(separator: ", ")
				print("\(pickTime)의 로또 당첨 번호는 \(winnerLottoNumbers) 입니다.")
			}
			
			randomNumbers.removeAll()
		}
		
		if times == 5 {
			break
		}
	}
}
