import Foundation

var lottoHistory = [Int : [Int]]()

func saveLottoNumbers(roundNumber: Int) {
	lottoHistory[roundNumber] = lottoNumbers
	lottoNumbers.removeAll()
}

func printLottoNumber(roundNumber: Int) {
	if let result = lottoHistory[roundNumber] {
		printResult(message: "\(roundNumber)회차의 로또 당첨 번호는 \(makeArrayToString(array: result)) 입니다.")
	}
}

func makeSaveLottoNumber(numberOfLottoRuns: Int) {
	for element in 1...numberOfLottoRuns {
		makeLottoNumbers()
		saveLottoNumbers(roundNumber: element)
	}
}