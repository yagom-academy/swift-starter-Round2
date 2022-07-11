
import Foundation

var lottoWinningNumbers: Set<Int> = []
var myLottoNumbers: Set<Int> = [2, 3, 5, 10, 21, 28]
var lottoWinningNumbersHistory: Dictionary<String, Array<Int>> = [String: Array<Int>]()
var round = 1

func drawLottoWinnigNumbers() {
    lottoWinningNumbers.removeAll()
    while lottoWinningNumbers.count < 6 {
        lottoWinningNumbers.insert(Int.random(in: 1...45))
    }
}

func checkMyLottoNumbers() {
    let overlappingNumbers = lottoWinningNumbers.intersection(myLottoNumbers)
    if overlappingNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        var stringOverlappingNumbers: Array<String> = []
        for overlappingNumber in overlappingNumbers {
            stringOverlappingNumbers.append(String(overlappingNumber))
        }
        print("축하합니다! 겹치는 번호는 \(stringOverlappingNumbers.joined(separator: ", ")) 입니다.")
    }
}

func recordLottoWinningNumbersHistory(){
    lottoWinningNumbersHistory["\(round)회차"] = Array(lottoWinningNumbers.sorted())
    round += 1
}

func repeatDrawingLottoWinningNumbers(round: Int) {
    for _ in 1...round {
        drawLottoWinnigNumbers()
        recordLottoWinningNumbersHistory()
    }
}

func checkHistoryOfLottoWinningNumbers(round: Int){
    guard let lottoWinningNumbersOfRound = lottoWinningNumbersHistory["\(round)회차"] else{
        print("해당 회차는 값이 없습니다")
        return
    }
    var checkedLottoWinningNumbersInHistory: Array<String> = []
    for lottoWinningNumber in lottoWinningNumbersOfRound {
        checkedLottoWinningNumbersInHistory.append(String(lottoWinningNumber))
    }
    print("\(round)회차의 로또 당첨 번호는 \(checkedLottoWinningNumbersInHistory.joined(separator: ", ")) 입니다")
}



