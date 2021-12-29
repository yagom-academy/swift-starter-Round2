import Foundation

var lottoHistory = [Int : [Int]]()
var roundNumber = 1

func saveLottoNumbers() {
	lottoHistory[roundNumber] = lottoNumbers
	lottoNumbers.removeAll()
	roundNumber += 1
}

func printLottoNumber() {
	if let result = lottoHistory[2] {
		print("2회차의 로또 당첨 번호는 \(makeArrayToString(array: result)) 입니다.")
	}
}

func makeSaveAndPrintLottoNumber() {
	let numberOfLottoRuns = 5
	for _ in 1...numberOfLottoRuns {
		makeLottoNumbers()
		saveLottoNumbers()
	}
	printLottoNumber()
}