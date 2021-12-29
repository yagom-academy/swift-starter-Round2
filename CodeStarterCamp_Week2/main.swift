
import Foundation

var lottoSaveDict: Dictionary<String, Set<Int>> = [:]

lottoSaveDict = nextLottoDraw(lottoSaveHistoryDictonary: lottoSaveDict, count: 5)
printLottoAnswer(answerLottoDict: lottoSaveDict, printDraw: 2)
lottoSaveDict = nextLottoDraw(lottoSaveHistoryDictonary: lottoSaveDict, count: 1)
printLottoAnswer(answerLottoDict: lottoSaveDict, printDraw: 6)



