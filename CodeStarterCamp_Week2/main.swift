
import Foundation

//Step 2: 내 번호와 맞추어보기

drawLottoWinnigNumbers()
checkMyLottoNumbers()
print("이번주 당첨번호는 \(lottoWinningNumbers.sorted()) 입니다")
print("이번주 내번호는 \(myLottoNumbers.sorted()) 입니다")


// Step 3: 로또 당첨 번호를 회차별로 저장하고, 확인하자!

repeatDrawingLottoWinningNumbers(round: 5)
checkHistoryOfLottoWinningNumbers(round: 2)
checkHistoryOfLottoWinningNumbers(round: 7)
print(lottoWinningNumbersHistory)
