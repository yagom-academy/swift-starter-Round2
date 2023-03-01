var randomNumbers: Set<Int> = Set()

func createRandomNumbers() -> Set<Int> {
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

func compareNumbers(myLottoNumbers: Set<Int>) {
    let subtractNumbers = myLottoNumbers.subtracting(randomNumbers)
    
    if subtractNumbers.isEmpty {
        print("축하합니다! 겹치는 번호는 \(randomNumbers) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호는 없습니다.")
    }
}

compareNumbers(myLottoNumbers: [4, 6, 8, 20, 25, 39])
