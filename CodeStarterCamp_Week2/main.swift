var roundNumber = 0
var recordDictionary: [Int:Set<Int>] = [:]

func createLotto() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
    roundNumber += 1
    return lottoNumbers
}

func checkResult(roundNumber: Int, rounds: Int) {
    if let value = recordDictionary[roundNumber] {
        let sortedValue = value.sorted().map { String($0) }.joined(separator: ", ")
        print("\(roundNumber)회차의 로또 당첨 번호는 \(sortedValue) 입니다.")
    } else {
        print("회차 번호가 잘못 지정되었습니다. 1 ~ \(rounds) 사이의 값으로 지정해주세요.")
    }
}

func recordRoundNumbers(rounds: Int) {
    for round in 1...rounds {
    recordDictionary[round] = createLotto()
    }
}

func printLottoRound() {
    recordRoundNumbers(rounds: 5)
    checkResult(roundNumber: 1, rounds: 5)
    checkResult(roundNumber: 2, rounds: 5)
    checkResult(roundNumber: 3, rounds: 5)
    checkResult(roundNumber: 4, rounds: 5)
    checkResult(roundNumber: 5, rounds: 5)
    checkResult(roundNumber: 5, rounds: 5)  //중복확인용
    checkResult(roundNumber: 9, rounds: 5)  //에러메시지 출력 확인용

}

printLottoRound()

/*
 예제
 checkResult(roundNumber: 2)
 checkResult(roundNumber: 3)
 checkResult(roundNumber: 4)
 checkResult(roundNumber: 5)
 checkResult(roundNumber: 5)  //중복확인용
 checkResult(roundNumber: 6)  //에러메시지 출력 확인용
 */
