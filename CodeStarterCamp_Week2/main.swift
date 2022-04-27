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

func operateInLottos(turnLotto: Int, getNumber: Int) {
	let generatedNumberOfLotto = generateNumberOfLotto()
	let saveNumbers = generatedNumberOfLotto.map{ String($0) }.joined(separator: ", ")
	var archiveOfLotto = [Int: String]()
	for round in 1...turnLotto {
		archiveOfLotto[round] = saveNumbers
	}

	if let getNumbers: String = archiveOfLotto[getNumber] {
		print("\(getNumber)회차의 로또 당첨 번호는 \(getNumbers) 입니다.")
	}
}

matchOfNumbers([1,2,3,4,5,6])

operateInLottos(turnLotto: 5, getNumber: 1)
operateInLottos(turnLotto: 5, getNumber: 2)
operateInLottos(turnLotto: 5, getNumber: 6)
