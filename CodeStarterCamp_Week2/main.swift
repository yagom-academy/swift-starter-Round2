let winNumbers: Set<Int> = generateLottoNumbers()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

printResult(numbers: getMatchedNumbers(winNumbers: winNumbers, myNumbers: myLottoNumbers))
