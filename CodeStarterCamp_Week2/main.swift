
import Foundation

var lottoSaveDict: Dictionary<String, Set<Int>> = [:]

nextLottoDraw(lottoSaveHistoryDictonary: &lottoSaveDict, count: 5)
printLottoAnswer(answerLottoDict: lottoSaveDict, printDraw: 2)
nextLottoDraw(lottoSaveHistoryDictonary: &lottoSaveDict, count: 1)
printLottoAnswer(answerLottoDict: lottoSaveDict, printDraw: 6)



