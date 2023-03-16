//
//  STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2023/03/16.
//

import Foundation

var temporaryArr: [Int] = []

func makeLottoNumbers() -> [Int] {
	for _ in 0...5 {
		temporaryArr.append(Int.random(in: 1...45))
	}
	
	var lottoArray = temporaryArr
	
	for i in temporaryArr {
		if lottoArray.contains(i) == false {
			lottoArray.append(i)
		}
	}
	return lottoArray
}

let winnerLottoNumber = makeLottoNumbers()

func matchLottoNumbers(myLottoNumbers: [Int], winnerLottoNumbers: [Int]) {
	var matchLottoNumbers: [Int] = []
	
	for number in winnerLottoNumbers {
		if myLottoNumbers.contains(number) == true {
			matchLottoNumbers.append(number)
			print(matchLottoNumbers)
		}
	}
	
	let winnerNumbers = matchLottoNumbers.map { String($0) }.joined(separator: ",")
	
	if matchLottoNumbers.count >= 1 {
		print("축하합니다! 겹치는 번호는 \(winnerNumbers) 입니다.")
	} else if matchLottoNumbers.count == 0 {
		print("아쉽지만 겹치는 번호가 없습니다.")
	}
}


