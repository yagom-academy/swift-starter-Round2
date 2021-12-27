import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = [Int]()
var duplicateNumbers = [Int]()
var count: Int = 0

func makeLotto () {
	while count < 6 {
		let num = Int.random(in: 1...45)
		if lottoNumbers.contains(num) {
			continue
		} else {
			lottoNumbers.append(num)
			count += 1
		}
	}
}

func checkNumbers() {
	for element in myLottoNumbers {
		if lottoNumbers.contains(element) {
			duplicateNumbers.append(element)
		}
	}
	print("생성된 로또번호는", terminator: " ")
	printArrayWithoutBracket(arr:lottoNumbers)
	print("입니다!")
	if duplicateNumbers.isEmpty {
		print("아쉽지만 겹치는 번호가 없습니다.")
	} else {
		print("축하합니다! 겹치는 번호는", terminator: " ")
		printArrayWithoutBracket(arr:duplicateNumbers)
		print("입니다!")
	}
}

func printArrayWithoutBracket(arr: [Int]) {
	for idx in 0...arr.count - 1 {
		if idx == arr.count - 1 {
			print(arr[idx], terminator: " ")
		} else {
			print(arr[idx], terminator: ", ")
		}
	}
}





