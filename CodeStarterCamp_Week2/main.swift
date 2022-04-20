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

let lottoNumber = generateLottoNumber()
let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
let hitNumber = checkLottoNumber(compare: lottoNumber, with: myLottoNumber)

showLottoResult(of: hitNumber)
