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

func changeLiterals(of integerNumbers: [Int]) -> [String] {
    var literalNumbers: [String] = []
    
    for number in integerNumbers {
        literalNumbers.append(String(number))
    }
    
    return literalNumbers
}

func printLottoResult(by round: String, in storage: [String: Set<Int>]) {
    guard let lottoNumbers = findLottoNumbers(by: round, in: storage) else {
        print("해당 회차에 로또번호가 없습니다!")
        return
    }
    
    let sortedLottoNumbers = lottoNumbers.sorted()
    let resultLottoNumbers = changeLiterals(of: sortedLottoNumbers).joined(separator: ", ")
    
    print(round + "의 로또 당첨 번호는 " + resultLottoNumbers + " 입니다.")
}

var storageOfLottoRoundAndNumbers: [String: Set<Int>] = [:]

for round in 1...5 {
storeLottoRoundAndNumbers(in: &storageOfLottoRoundAndNumbers, round, makeLottoNumbers())
}
printLottoResult(by: "2회차", in: storageOfLottoRoundAndNumbers)
