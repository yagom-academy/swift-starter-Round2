import Foundation

let myLottoNumbers: Set<Int> = [7, 9, 12, 15, 22, 43]
let rottoNumbers: Set<Int> = generateRottoNumber()

lotteryWinningCheck(with: myLottoNumbers, by: rottoNumbers)

//로또번호 생성 함수
func generateRottoNumber() -> Set<Int> {
    var rotteryNumbers: Set<Int> = []
    
    while rotteryNumbers.count < 6 {
        rotteryNumbers.insert(Int.random(in: 1...45))
    }
    
    return rotteryNumbers
}

//나의 번호와 로또번호 중복 확인 함수
func lotteryWinningCheck(with myLottoNumbers: Set<Int>, by rottoNumbers: Set<Int>) {
    
    let resultSet: Set<Int> = Set(myLottoNumbers).intersection(rottoNumbers)
    
    resultSet.isEmpty ? print("아쉽지만 겹치는 번호가 없습니다.") : print("축하합니다! 겹치는 번호는 \(resultSet.map { String($0) }.joined(separator: ", ")) 입니다!")
}

