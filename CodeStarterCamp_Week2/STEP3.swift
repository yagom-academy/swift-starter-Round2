//
//  STEP3.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2023/03/19.
//

import Foundation

func makeNumbers() -> [Int] {
	var randomNumbers: Set<Int> = []
	
	while randomNumbers.count != 6 {
		let randomNumber = Int.random(in: 1...45)
		randomNumbers.insert(randomNumber)
	}
	
	let lottoNumbers = Array(randomNumbers)

	return lottoNumbers
}

let first = makeNumbers()
let second = makeNumbers()
let third = makeNumbers()
let fourth = makeNumbers()
let fifth = makeNumbers()

func confirmLottoNumbers(time: Int) {
	let dictionary: [Int: [Int]] = [
		1: first,
		2: second,
		3: third,
		4: fourth,
		5: fifth
	]
	
	guard let firstTime = dictionary[1] else { return }
	guard let secondTime = dictionary[2] else { return }
	guard let thirdTime = dictionary[3] else { return }
	guard let fourthTime = dictionary[4] else { return }
	guard let fifthTime = dictionary[5] else { return }
	
	let firstTimeWinnerNumbers = firstTime.map { String($0) }.joined(separator: ", ")
	let secondTimeWinnerNumbers = secondTime.map { String($0) }.joined(separator: ", ")
	let thirdTimeWinnerNumbers = thirdTime.map { String($0) }.joined(separator: ", ")
	let fourthTimeWinnerNumbers = fourthTime.map { String($0) }.joined(separator: ", ")
	let fifthTimeWinnerNumbers = fifthTime.map { String($0) }.joined(separator: ", ")
	
	switch time {
	case 1: print("\(time)회차 로또 당첨 번호는 \(firstTimeWinnerNumbers)입니다.")
	case 2: print("\(time)회차 로또 당첨 번호는 \(secondTimeWinnerNumbers)입니다.")
	case 3: print("\(time)회차 로또 당첨 번호는 \(thirdTimeWinnerNumbers)입니다.")
	case 4: print("\(time)회차 로또 당첨 번호는 \(fourthTimeWinnerNumbers)입니다.")
	case 5: print("\(time)회차 로또 당첨 번호는 \(fifthTimeWinnerNumbers)입니다.")
	default: print("1회차 이하의 당첨 번호 혹은 5회차 이상의 당첨 번호는 없습니다.")
	}
}

