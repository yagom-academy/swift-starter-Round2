func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count != 6 {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }

    return lottoNumbers
}

func storeLottoRoundAndNumbers(in storage: inout [String: Set<Int>], _ round: Int, _ numbers: Set<Int>) {
    
    let roundCount = "\(round)회차"
    storage[roundCount] = numbers
}

func findLottoNumbers(by round: String, in storage: [String: Set<Int>]) -> Set<Int>? {
    guard let lottoNumbers = storage[round] else {
        return nil
    }
    return lottoNumbers
}

func changeLiterals(of integerNumbers: Set<Int>) -> Set<String> {
    var literalNumbers: Set<String> = Set<String>()
    
    for number in integerNumbers {
        literalNumbers.insert(String(number))
    }
    
    return literalNumbers
}

var storageOfLottoRoundAndNumbers: [String: Set<Int>] = [:]

for round in 1...5 {
storeLottoRoundAndNumbers(in: &storageOfLottoRoundAndNumbers, round, makeLottoNumbers())
}
