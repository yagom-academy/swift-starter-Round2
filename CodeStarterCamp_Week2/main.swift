import Foundation

func generateNumberOfLotto() -> Set<Int> {
	let lottoNumbers = Set(Array(1...45).shuffled().prefix(6))
	return lottoNumbers
}

func matchNumbers(_ myLottoNumbers:[Int]) {
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

func operateLottos(repetitionLotto: Int, relationNumbers: Int) {
	let generatedNumberOfLotto = generateNumberOfLotto()
	let saveNumbers = generatedNumberOfLotto.map{ Int($0) }
	var archiveOfLotto = [String: [Int]]()
	for round in 1...repetitionLotto {
		archiveOfLotto["\(round)회차"] = saveNumbers
	}
	let getRound: String = "\(relationNumbers)회차"
	if let getNumbers = archiveOfLotto[getRound] {
		let getLottoNumbers = getNumbers.map{ String($0) }.joined(separator: ", ")
		print("\(getRound)의 로또 당첨 번호는 \(getLottoNumbers) 입니다.")
	}
}

matchNumbers([1,2,3,4,5,6])

operateLottos(repetitionLotto: 5, relationNumbers: 1)
operateLottos(repetitionLotto: 5, relationNumbers: 2)
operateLottos(repetitionLotto: 5, relationNumbers: 6)
