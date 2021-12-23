import Foundation

func createWinnigNumbers() -> Set<Int> {
    var numbers : Set<Int> = Set<Int>()
    
    repeat {
        numbers.insert(Int.random(in: 1...45))
    } while numbers.count < 6
    
    return numbers
}

func saveInDictionary(numbers : Set<Int>) {
    timeCount += 1
    winningNumbersRepository["\(timeCount)회차"] = numbers
}

func compareWinnigNumbersWith(myLottoNumbers:[Int]) -> [Int] {
    let winningNumbers: Set<Int> = createWinnigNumbers()
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

let myLottoNumbers: [Int] = [3,8,10,15,13,22]
var winningNumbersRepository = [String: Set<Int>]()
var timeCount : Int = 0
