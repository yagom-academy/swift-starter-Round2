import Foundation
var lotterySet: Set<Int> = Set<Int>()
func makeLotterySet(){
    repeat {
        let randomInt = Int.random(in: 1...45)
        lotterySet.insert(randomInt)
    } while lotterySet.count < 6
}
makeLotterySet()
print(lotterySet)

let myLottoNumbers: [Int] = [3, 5, 11, 14, 20, 26]
print(myLottoNumbers)
