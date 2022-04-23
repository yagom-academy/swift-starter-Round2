import Foundation

func generateNumberOfLotto() -> Set<Int> {
	var lottoNumbers = Set<Int>()
	var ballOfNumber: Int
	while lottoNumbers.count<6 {
		ballOfNumber = Int.random(in: 1...45)
		lottoNumbers.insert(ballOfNumber)
	}
	return lottoNumbers
}

func matchOfNumbers(_ myLottoNumbers:[Int]) {
	let matchOfNumbers: Set<Int> = generateNumberOfLotto().intersection(myLottoNumbers)
	let mappedNumbers = matchOfNumbers.map{ String($0) }.joined(separator: ", ")
	var resultMessage: String = ""
	if matchOfNumbers.isEmpty {
		resultMessage = "아쉽지만 겹치는 번호가 없습니다."
	} else {
		resultMessage = "축하합니다! 겹치는 번호는 \(mappedNumbers) 입니다!"
	}
	print(resultMessage)
}

matchOfNumbers([1,2,3,4,5,6])
