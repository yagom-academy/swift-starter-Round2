let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateRandomNumbers() -> [Int] {
    var winningLottoNumbers = Set<Int>()
    
    while winningLottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        winningLottoNumbers.insert(randomNumber)
    }
    
    return Array(winningLottoNumbers)
}

let winningNumbers = generateRandomNumbers()

func checkLottoNumbers(_ winningNumbers: [Int], _ myNumbers: [Int]) {
    let intersection = Set(winningNumbers).intersection(Set(myNumbers))
    
    if intersection.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let matchingNumbers = intersection.sorted()
        print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
        print("당첨 번호는 \(winningNumbers) 입니다.")
    }
}

checkLottoNumbers(winningNumbers, myLottoNumbers)

