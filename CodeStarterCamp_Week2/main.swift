import Foundation

let myLottoNumbers: [Int] = [7, 9, 12, 15, 22, 43]
let rottoNumber = Array(generateRottoNumber())

lotteryWinningCheck(with: myLottoNumbers, by: rottoNumber)

//로또번호 생성 함수
func generateRottoNumber() -> Set<Int> {
    var rotteryNumber: Set<Int> = []
    
    while rotteryNumber.count < 6 {
        rotteryNumber.insert(Int.random(in: 1...45))
    }
    
    return rotteryNumber
}

//나의 번호와 로또번호 중복 확인 함수
func lotteryWinningCheck(with myLottoNumbers: Array<Int>, by rottoNumber: Array<Int>) {
    
    var resultArray: Array<Int> = []
    var doubleCheck: Bool = false
    
    for x in myLottoNumbers {
          if rottoNumber.contains(x) {
              resultArray.append(x)
              doubleCheck = true
          }
       }
    
    doubleCheck ? print("축하합니다! 겹치는 번호는 \(resultArray) 입니다!") : print("아쉽지만 겹치는 번호가 없습니다.")
}
