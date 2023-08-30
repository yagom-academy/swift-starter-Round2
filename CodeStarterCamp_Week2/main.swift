import Foundation

let myLottoNumbers: Set<Int> = [7, 9, 12, 15, 22, 43]
let rottoNumbers: Set<Int> = generateRottoNumber()

let numberOfRounds = 5
let nTimeRottoNumber = generateNtimesRottoNumber(for: numberOfRounds)
lotteryWinningCheck(with: myLottoNumbers, by: nTimeRottoNumber, for: numberOfRounds)

//n회차 로또 번호 생성 함수
func generateNtimesRottoNumber(for rounds: Int) -> Dictionary<Int, Set<Int>> {
    var nTimesWinningLottoNumbers: [Int : Set<Int>] = [:]
    
    for round in 1...rounds {
            let lottoNumbers = generateRottoNumber()
        nTimesWinningLottoNumbers[round] = lottoNumbers
        }
    
    return nTimesWinningLottoNumbers
}

//로또 번호 생성 함수
func generateRottoNumber() -> Set<Int> {
    var rotteryNumbers: Set<Int> = []
    
    while rotteryNumbers.count < 6 {
        rotteryNumbers.insert(Int.random(in: 1...45))
    }
    
    return rotteryNumbers
}

//n회차 로또 당첨 번호 확인
func lotteryWinningCheck(with myLottoNumbers: Set<Int>, by rottoNumbers: Dictionary<Int, Set<Int>>, for rounds: Int) {
    
    let winningRottoNumber = rottoNumbers[rounds]!.map { String($0) }.joined(separator: ", ")
    print("\(rounds)회차의 로또 당첨 번호는 \(winningRottoNumber) 입니다.")
}
