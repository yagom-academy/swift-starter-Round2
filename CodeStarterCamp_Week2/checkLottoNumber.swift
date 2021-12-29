import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = [Int]()
var duplicateNumbers = [Int]()

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

func makeArrayToString(array: [Int]) -> String {
	var lottoNumberString: String = ""
	for index in 0...array.count - 1 {
		lottoNumberString.append(String(array[index]))
		if index != array.count - 1 {
			lottoNumberString.append(", ")
		}
	}
	return lottoNumberString
}

func printResult() {
	if duplicateNumbers.isEmpty {
		print("아쉽지만 겹치는 번호가 없습니다.")
	} else {
		print("축하합니다! 겹치는 번호는 \(makeArrayToString(array: duplicateNumbers)) 입니다!")
	}
}

func buyLotto() {
	makeLottoNumbers()
	checkDuplicateNumbers()
	printResult()
}