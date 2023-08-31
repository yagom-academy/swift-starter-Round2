import Foundation

let myLottoNumbers: Set<Int> = [7, 9, 12, 15, 22, 43]
let rottoNumbers: Set<Int> = generateLottoNumber()
let nTimeLottoNumbers: Dictionary<String, Set<Int>> = generateNtimesLottoNumber(count: 5)
let numberOfRounds: String = "2회차"


lottoWinningCheck(with: myLottoNumbers, by: nTimeLottoNumbers, for: numberOfRounds)

//n회차 로또 번호 생성 함수
func generateNtimesLottoNumber(count rounds: Int) -> Dictionary<String, Set<Int>> {
    var nTimesWinningLottoNumbers: [String : Set<Int>] = [:]
    
    for round in 1...rounds {
            let lottoNumbers = generateLottoNumber()
            nTimesWinningLottoNumbers["\(round)회차"] = lottoNumbers
    }
    
    return nTimesWinningLottoNumbers
}

//로또 번호 생성 함수
func generateLottoNumber() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

//n회차 로또 당첨 번호 확인
func lottoWinningCheck(with myLottoNumbers: Set<Int>, by lottoNumbers: Dictionary<String, Set<Int>>, for rounds: String) {
    let turn: Int = rounds[rounds.startIndex].wholeNumberValue!
    let winninglottoNumber = lottoNumbers["\(turn)회차"]!.map { String($0) }.joined(separator: ", ")
    
    print("\(rounds)의 로또 당첨 번호는 \(winninglottoNumber) 입니다.")
}
