import Foundation

func createWinningNumbers() -> Set<Int> {
    var numbers : Set<Int> = Set<Int>()
    
    repeat {
        numbers.insert(Int.random(in: 1...45))
    } while numbers.count < 6
    
    saveLottoHistory(numbers: numbers)
    
    return numbers
}

func saveLottoHistory(numbers : Set<Int>) {
    lottoHistoryNumber += 1
    winningNumbersRepository["\(lottoHistoryNumber)회차"] = numbers
}

func compareWinningNumbersWith(myLottoNumbers:[Int]) -> [Int] {
    let winningNumbers: Set<Int> = createWinningNumbers()
    var resultNumbers = [Int]()
    
    for index in 0...5 {
        if winningNumbers.contains(myLottoNumbers[index]) {
            resultNumbers.append(myLottoNumbers[index])
        }
    }
    return resultNumbers
}

func printOut(resultNumbers: [Int]) {
    if resultNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0...(resultNumbers.count - 1) {
            print(resultNumbers[index], terminator: "")
            if (resultNumbers.count - 1) > index {
                print(", ", terminator: "")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func printOut(lottoHistoryNumber: Int) {
    var count: Int = 0
    print("\(lottoHistoryNumber)회차의 로또 당첨 번호는 ", terminator: "")

    if let printWinning = winningNumbersRepository["\(lottoHistoryNumber)회차"] {
        let sortNumber: [Int] = printWinning.sorted()
        for number in sortNumber {
            print(String(number), terminator: "")
            if  count < 5{
                print(", ", terminator: "")
                count += 1
            }
        }
    }
    print("입니다.")
}

func repeatCreateWinningNumbers(iteration: Int) {
    for _ in 0..<iteration {
        print(createWinningNumbers())
    }
}


let myLottoNumbers: [Int] = [3,8,10,15,13,22]
var winningNumbersRepository = [String: Set<Int>]()
var lottoHistoryNumber : Int = 0

repeatCreateWinningNumbers(iteration: 5)
printOut(lottoHistoryNumber: 3)
