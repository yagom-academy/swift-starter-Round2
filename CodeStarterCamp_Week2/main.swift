import Foundation

func generateLottoNumber() -> [Int] {
    let lottoNumber: [Int] = Array((1...45).shuffled()[0...5])
    
    return lottoNumber
}

func checkLottoNumber(compare lottoNumber: [Int], with myLottoNumber: [Int]) -> [Int] {
    var hitNumbers: [Int] = []
    
    for number in myLottoNumber {
        if lottoNumber.contains(number) {
            hitNumbers.append(number)
        }
    }
    return hitNumbers
}

func printLottoResult(of hitNumbers: [Int]) {
    if hitNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let hitNumbersToString = hitNumbers.reduce("") {
            String($0) == "" ? String($1) : String($0) + ", " + String($1)
        }
        print("축하합니다! 겹치는 번호는 \(hitNumbersToString) 입니다!")
    }
}

func storeLotto(upto round: Int) -> [String: [Int]] {
    var lottoHistory = [String: [Int]]()
    
    for index in 1...round {
        lottoHistory["\(index)회차"] = generateLottoNumber()
    }
    
    return lottoHistory
}

func printLotto(of round: String, from lottoHistory: [String: [Int]]) {
    if let lottoNumber = lottoHistory[round] {
        let lottoNumberToString = lottoNumber.reduce("") {
            String($0) == "" ? String($1) : String($0) + ", " + String($1)
        }
        print("\(round)의 로또 당첨 번호는 \(lottoNumberToString) 입니다!")
    } else {
        print("해당 회차의 로또 당첨 번호가 없습니다. \(lottoHistory.count)회차 까지 있습니다.")
    }
}

/* Step2 실행하기 위한 코드
let lottoNumber = generateLottoNumber()
let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
let hitNumber = checkLottoNumber(compare: lottoNumber, with: myLottoNumber)
showLottoResult(of: hitNumber)
 */

printLotto(of: "3회차", from: storeLotto(upto: 5))
