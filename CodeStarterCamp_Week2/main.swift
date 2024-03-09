let gameType = setGameType()
let myNumbers = playGame(gameType: gameType)
let winningNumbers = drawWinningNumber()
showGameResult(winningNumbers: winningNumbers, myNumbers: myNumbers)

func setGameType() -> Int {
    print("자동을 원하시면 0000, 수동을 원하시면 1000을 입력해주세요!")
    guard let userInput = readLine(), let gameType = Int(userInput) else {
        return setGameType()
    }
    return gameType
}

func playGame(gameType: Int) -> Set<Int> {
    var myNumbers: Set<Int> = []
    guard gameType == 0000 else {
        myNumbers = generatePickNumbers()
        return myNumbers
    }
    myNumbers = generateAutoNumbers()
    return myNumbers
}

func generatePickNumbers() -> Set<Int> {
    var pickNumbers: Set<Int> = []
    while pickNumbers.count < 6 {
        print("1~45 숫자 중 하나를 택해주세요.")
        guard let userInput = readLine(), let pickNumber = Int(userInput) else {
            print("1~45 숫자 중 하나를 택해주세요.")
            continue
        }
        
        guard pickNumber > 0 && pickNumber <= 45 else {
            print("1~45 숫자 중 하나를 택해주세요.")
            continue
        }
        pickNumbers.insert(pickNumber)
    }
    return pickNumbers
}

func generateAutoNumbers() -> Set<Int> {
    var autoNumbers: Set<Int> = []
    while autoNumbers.count < 6 {
        let autoNumber = Int.random(in: 1...45)
        autoNumbers.insert(autoNumber)
    }
    return autoNumbers
}

func drawWinningNumber() -> Set<Int> {
    var winningNumbers: Set<Int> = []
    var winningNumber = 0
    
    while winningNumbers.count < 6 {
        winningNumber = Int.random(in: 1...45)
        winningNumbers.insert(winningNumber)
    }
    print("당첨번호는 \(winningNumbers.sorted().map { String($0) }.joined(separator: ", ")) 입니다.")
    return winningNumbers
}

func showGameResult(winningNumbers: Set<Int>, myNumbers: Set<Int>) {
    let matchingNumber = winningNumbers.intersection(myNumbers)
    print("선택번호는 \(myNumbers.sorted().map { String($0) }.joined(separator: ", ")) 입니다.")
    if matchingNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumber.sorted().map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}

