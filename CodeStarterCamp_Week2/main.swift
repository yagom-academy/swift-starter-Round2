import Foundation

func makeNumberOfLotto() -> [Int] {
	var lottoNumbers: Set<Int> = Set<Int>()
	var ballOfNumber: Int
	while lottoNumbers.count<6 {
		ballOfNumber = Int.random(in: 1...45)
		lottoNumbers.insert(ballOfNumber)
	}
	let mappedNumbers = lottoNumbers.map{ Int($0) }
	return mappedNumbers
}
