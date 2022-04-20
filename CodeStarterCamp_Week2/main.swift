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

func showLottoResult(of hitNumbers: [Int]) {
    hitNumbers.isEmpty ? print("아쉽지만 겹치는 번호가 없습니다.") : print("축하합니다! 겹치는 번호는 \(hitNumbers.reduce("") { String($0) == "" ? String($1) : String($0) + ", " + String($1) } ) 입니다!")
}

func storeLotto() -> [String : [Int]] {
    var lottoHistory = [String:[Int]]()
    
    for index in 1...5 {
        lottoHistory["\(index)회차"] = generateLottoNumber()
    }
    
    return lottoHistory
}

func showLotto(of round: String, from lottoHistory: [String : [Int]]) {
    if let lottoNumber = lottoHistory[round] {
        print("\(round)의 로또 당첨 번호는 \(lottoNumber.reduce("") { String($0) == "" ? String($1) : String($0) + ", " + String($1) } ) 입니다!")
    }
}

/* Step2 실행하기 위한 코드
let lottoNumber = generateLottoNumber()
let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
let hitNumber = checkLottoNumber(compare: lottoNumber, with: myLottoNumber)
showLottoResult(of: hitNumber)
 */

var lottoHistory: [String : [Int]] = storeLotto()
showLotto(of: "2회차", from: lottoHistory)
