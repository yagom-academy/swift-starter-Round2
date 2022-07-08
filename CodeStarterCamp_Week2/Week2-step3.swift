import Foundation

var lottoWinningNumbersHistory: Dictionary<String, Array<Int>> = [String: Array<Int>]()
var round = 1

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
    if let lottoWinningNumbersOfRound = lottoWinningNumbersHistory["\(round)회차"] {
        var ArrlottoWinningNumbersOfRound: Array<String> = []
        for lottoWinningNumbers in lottoWinningNumbersOfRound {
            ArrlottoWinningNumbersOfRound.append(String(lottoWinningNumbers))
        }
        print("\(round)회차의 로또 당첨 번호는 \(ArrlottoWinningNumbersOfRound.joined(separator: ", ")) 입니다")
    }
    else {
        print("해당 회차는 값이 없습니다")
    }
}

