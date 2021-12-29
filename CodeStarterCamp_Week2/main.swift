
import Foundation

var lottoSaveDict: Dictionary<String, Set<Int>> = [:]

lottoSaveDict = addLottoDrow(lottoSaveDict: lottoSaveDict, count: 5)
printLotto(answerLottoDict: lottoSaveDict, printDraw: 2)
lottoSaveDict = addLottoDrow(lottoSaveDict: lottoSaveDict, count: 1)
printLotto(answerLottoDict: lottoSaveDict, printDraw: 6)


