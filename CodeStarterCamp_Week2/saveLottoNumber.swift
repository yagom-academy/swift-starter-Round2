import Foundation

var lottoHistory = [Int : [Int]]()

func saveLottoNumbers(roundNumber: Int) {
	lottoHistory[roundNumber] = lottoNumbers
	lottoNumbers.removeAll()
}

func printLottoNumber() {
	if let result = lottoHistory[2] {
		print("2회차의 로또 당첨 번호는 \(makeArrayToString(array: result)) 입니다.")
	}
}

func makeSaveAndPrintLottoNumber() {
	let numberOfLottoRuns = 5
	for element in 1...numberOfLottoRuns {
		makeLottoNumbers()
		saveLottoNumbers(roundNumber: element)
	}
	printLottoNumber()
}