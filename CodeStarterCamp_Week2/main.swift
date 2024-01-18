let rounds = 5
var roundNumber = 0
var recordDictionary: [Int:Set<Int>] = [:]

//로또번호 생성 함수
func createLotto() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
    roundNumber += 1
    return lottoNumbers
}

//Dictionary 생성, 출력 함수
func recordNumbers(roundNumber: Int) {
    if let value = recordDictionary[roundNumber] {
        let sortedValue = value.sorted().map { String($0) }.joined(separator: ", ")
        print("\(roundNumber)회차의 로또 당첨 번호는 \(sortedValue) 입니다.")
    } else {
        print("회차 번호가 잘못 지정되었습니다. 1 ~ \(rounds) 사이의 값으로 지정해주세요.")
    }
    }

//Dictionary 저장 함수
func recordRoundNumbers() {
    for round in 1...rounds {
        recordDictionary[round] = createLotto()
        }
}

//결과 출력 함수
func printLottoRound() {
    recordRoundNumbers()
    recordNumbers(roundNumber: 1)
    recordNumbers(roundNumber: 2)
    recordNumbers(roundNumber: 3)
    recordNumbers(roundNumber: 4)
    recordNumbers(roundNumber: 5)
    recordNumbers(roundNumber: 5)  //중복확인용
    recordNumbers(roundNumber: -1)  //에러메시지 출력 확인용

}

printLottoRound()

/*
 예제
 recordNumbers(roundNumber: 2)
 recordNumbers(roundNumber: 3)
 recordNumbers(roundNumber: 4)
 recordNumbers(roundNumber: 5)
 recordNumbers(roundNumber: 5)  //중복확인용
 recordNumbers(roundNumber: 6)  //에러메시지 출력 확인용
 */
