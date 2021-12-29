import Foundation

var lottoHistory = [Int : Any]()
var roundNumber = 1
var numberOfLottoRuns = 5
var round2Number: String = ""

func saveLottoNumbers() {
	lottoHistory[roundNumber] = lottoNumbers
	lottoNumbers.removeAll()
	roundNumber += 1
}

func makeRound2ArrayToString(array: [Int]) {
	for index in 0...array.count - 1 {
		round2Number.append(String(array[index]))
		if index != array.count - 1 {
			round2Number.append(", ")
		} 
	}
}

func printRound2() {
	if let result = lottoHistory[2] as? [Int]{
		makeRound2ArrayToString(array: result)
		print("2회차의 로또 당첨 번호는 " + round2Number + " 입니다.")
	}
}

func checkRound2LottoNumbers() {
	for _ in 1...numberOfLottoRuns {
		makeLottoNumbers()
		saveLottoNumbers()
	}
	printRound2()
}