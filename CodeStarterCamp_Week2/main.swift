import Foundation


//step3


var resultNumbers: [String : [Int]] = [:]

func makeLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    while lottoNumbers.count < 6 {
        lottoNumbers.append(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func storeLottoNumbers() {
    for _ in 0..<5 {
        if resultNumbers.keys.count == 0 {
            let times = "1회차"
            resultNumbers[times] = makeLottoNumbers()
        }else {
            let times = "\(resultNumbers.keys.count + 1)회차"
            resultNumbers[times] = makeLottoNumbers()
        }
    }
}

func printWinningNumbers(round: Int) {
    storeLottoNumbers()
    if let checkNumbers = resultNumbers["\(round)회차"] {
        let winningNumbers = checkNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
    }else {
        print("해당 회차의 로또 당첨 번호는 없습니다.")
    }
    print(resultNumbers.sorted(by: { $0.key < $1.key }))
}

printWinningNumbers(round: 2)
