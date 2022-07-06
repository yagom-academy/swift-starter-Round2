
import Foundation


//Step 2: 내 번호와 맞추어보기!

var lottoWinningNumbers: Set<Int> = []
var myLottoNumbers: Set<Int> = [2, 3, 5, 10, 21, 28]

func drawLottoWinnigNumbers() {
    while lottoWinningNumbers.count < 6 {
        lottoWinningNumbers.insert(Int.random(in: 1...45))
    }
}

func checkMyLottoNumbers() {
    let overlappingNumbers = lottoWinningNumbers.intersection(myLottoNumbers)
    let numberOfOverlappingNumbers = lottoWinningNumbers.intersection(myLottoNumbers).count
    
    if numberOfOverlappingNumbers == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        var StringOverlappingNumbers: Array<String> = []
        for number in overlappingNumbers {
            StringOverlappingNumbers.append("\(number)")
        }
        print("축하합니다! 겹치는 번호는", terminator: " ")
        print(StringOverlappingNumbers.joined(separator: ", "), "입니다.")
    }
}

drawLottoWinnigNumbers()
print("이번주 당첨번호는 \(lottoWinningNumbers.sorted()) 입니다")
print("이번주 내번호는 \(myLottoNumbers.sorted()) 입니다")
checkMyLottoNumbers()
