import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = [Int]()
var duplicateNumbers = [Int]()
var duplicateNumberString: String = ""

func makeLottoNumbers() {
	while lottoNumbers.count < 6 {
		let randomNumber = Int.random(in: 1...45)
		if lottoNumbers.contains(randomNumber) {
			continue
		} else {
			lottoNumbers.append(randomNumber)
		}
	}
}

func checkDuplicateNumbers() {
	for element in myLottoNumbers {
		if lottoNumbers.contains(element) {
			duplicateNumbers.append(element)
		}
	}
}

func makeDuplicateNumberString(arr: [Int]) {
	for idx in 0...arr.count - 1 {
		duplicateNumberString.append(String(arr[idx]))
		if idx != arr.count - 1 {
			duplicateNumberString.append(", ")
		} 
	}
}

func printResult() {
	if duplicateNumbers.isEmpty {
		print("아쉽지만 겹치는 번호가 없습니다.")
	} else {
		makeDuplicateNumberString(arr: duplicateNumbers)
		print("축하합니다! 겹치는 번호는 " + duplicateNumberString + " 입니다!")
	}
}