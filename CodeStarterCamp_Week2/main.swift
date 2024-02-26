var myNumbers = startGame()
var winningNumbers = drawWinningNumber()
showGameResult(winningNumbers: winningNumbers, myNumbers: myNumbers)

func startGame() -> Set<Int> {
    var myNumbers: Set<Int> = []
    print("1~45 숫자 중에 6개를 선택해주세요. 자동을 원하시면 0000을 입력해주세요.")
    var myNumber = Int(readLine()!)!
    
    if myNumber != 0000 {
        myNumbers.insert(myNumber)
        while myNumbers.count < 6 {
            myNumber = Int(readLine()!)!
            if myNumber <= 0 {
                print("숫자가 너무 작습니다. 다시 입력해주세요.")
            }else if myNumber <= 45 {
                myNumbers.insert(myNumber)
            }else {
                print("숫자가 너무 큽니다. 다시 입력해주세요. ")
            }
        }
    }else {
        while myNumbers.count < 6 {
            let autoLottoNumber = Int.random(in: 1...45)
            myNumbers.insert(autoLottoNumber)
        }
    }
    print("선택번호는 \(myNumbers.sorted().map { String($0) }.joined(separator: ", ")) 입니다.")
    return myNumbers
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
        print("축하합니다! 겹치는 번호는 \(matchingNumber.sorted().map {String($0) }.joined(separator: ", ")) 입니다!")
    }
}
