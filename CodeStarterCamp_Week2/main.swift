let gameType = setGameType()
let myNumbers = playGame(gameType: gameType)
let winningNumbers = drawWinningNumber()
showGameResult(winningNumbers: winningNumbers, myNumbers: myNumbers)

func setGameType() -> Int {
    print("자동을 원하시면 0000, 수동을 원하시면 1000을 입력해주세요!")
    if let userInput = readLine(), let gameType = Int(userInput){
        if gameType == 1000 || gameType == 0000 {
            return gameType
        } else {
            return setGameType()
        }
    } else {
        return setGameType()
    }
}

func playGame(gameType: Int) -> Set<Int> {
    var myNumbers: Set<Int> = []
        if gameType != 0000 {
            print("1~45 숫자 중에 6개를 선택해주세요.")
            while myNumbers.count < 6 {
                if let userInput = readLine(), let myNumber = Int(userInput) {
                    if myNumber <= 0 {
                        print("숫자가 너무 작습니다. 다시 입력해주세요.")
                    }else if myNumber <= 45 {
                        myNumbers.insert(myNumber)
                    }else {
                        print("숫자가 너무 큽니다. 다시 입력해주세요. ")
                    }
                }
            }
        }else {
            myNumbers = generateAutoNumbers()
        }
        print("선택번호는 \(myNumbers.sorted().map { String($0) }.joined(separator: ", ")) 입니다.")
        return myNumbers
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
    
    if matchingNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }else{
        print("축하합니다! 겹치는 번호는 \(matchingNumber.sorted().map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}
