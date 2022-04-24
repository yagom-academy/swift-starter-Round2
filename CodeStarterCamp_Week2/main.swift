import Foundation

func generateNumberOfLotto() -> Set<Int> {
	let lottoNumbers = Set(Array(1...45).shuffled().prefix(6))
	return lottoNumbers
}

func matchOfNumbers(_ myLottoNumbers:[Int]) {
	let generatedNumberOfLotto = generateNumberOfLotto()
	let matchOfNumbers: Set<Int> = generatedNumberOfLotto.intersection(myLottoNumbers)
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
