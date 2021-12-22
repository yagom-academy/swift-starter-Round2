let winNumbers: Set<Int> = generateLottoNumbers()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let sortedRightNumbers: [Int] = getMatchedNumbers(win: winNumbers, my: myLottoNumbers)

printResultOfLotto(matchedNumbers: sortedRightNumbers)
