import Foundation

let myLottoNumber: [Int] = [7, 9, 12, 15, 22, 43]
let rottoNumber: [Int] = Array(generateRottoNumber())

lotteryWinningCheck(for: myLottoNumber, with: rottoNumber)

//로또번호 생성 함수
func generateRottoNumber() -> Set<Int> {
    var rotteryNumber: Set<Int> = []
    
    while rotteryNumber.count < 6 {
        rotteryNumber.insert(Int.random(in: 1...45))
    }
    
    return rotteryNumber
}

//나의 번호와 로또번호 중복 확인 함수
func lotteryWinningCheck(for myLottoNumber: Array<Int>, with rottoNumber: Array<Int>) {
    
    var resultSet: Set<Int> = []
    
    for x in myLottoNumber {
          if rottoNumber.contains(x) {
              resultSet.insert(x)
          }
       }
    resultSet.isEmpty ? print("아쉽지만 겹치는 번호가 없습니다.") : print("축하합니다! 겹치는 번호는 \(resultSet.map { String($0) }.joined(separator: ", ")) 입니다!")
}
