import Foundation

let nTimeLottoNumbers: Dictionary<String, Set<Int>> = generateNtimesLottoNumber(count: 10)
let numberOfRounds: String = "5회차"

lottoWinningCheck(by: nTimeLottoNumbers, for: numberOfRounds)

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
func lottoWinningCheck(by lottoNumbers: Dictionary<String, Set<Int>>, for rounds: String) {
    
    if let winningNumbers = lottoNumbers[rounds] {
        let printWinningNumbers = winningNumbers.map { String($0) }.joined(separator: ", ")
        print("\(rounds)의 로또 당첨 번호는 \(printWinningNumbers) 입니다.")
    } else {
        print("\(rounds)의 로또 당첨 번호가 없습니다.")
    }
}
