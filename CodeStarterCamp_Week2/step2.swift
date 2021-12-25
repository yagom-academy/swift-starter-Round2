let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = [Int]()
var dupNumbers = [Int]()
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
	for idx in 0...5 {
		if lottoNumbers.contains(myLottoNumbers[idx]) {
			dupNumbers.append(myLottoNumbers[idx])
		}
	}
	print("생성된 로또번호는 \(lottoNumbers) 입니다!")
	if dupNumbers.isEmpty {
		print("아쉽지만 겹치는 번호가 없습니다.")
	} else {
		print("축하합니다! 겹치는 번호는 \(dupNumbers) 입니다!")
	}
}

makeLotto()
checkNumbers()