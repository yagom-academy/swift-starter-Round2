func drawLotto() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    for _ in 1... {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
        
        if lottoNumbers.count == 6 {
            break
        }
    }
    return lottoNumbers
}

func printSet(intersectionNumber: Set<Int>) {
    var loopCount = 1
    
    for number in intersectionNumber.sorted() {
        loopCount == intersectionNumber.count ? print("\(number)", terminator: " ") : print("\(number)", terminator: ", ")
            loopCount += 1
    }
}

func checkNumber(chooseNumber: Set<Int>, winningNumber: Set<Int>) {
    let intersectionNumber: Set<Int> = chooseNumber.intersection(winningNumber)
    
    if intersectionNumber.isEmpty != true {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        printSet(intersectionNumber: intersectionNumber)
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var lotto = drawLotto()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
checkNumber(chooseNumber: myLottoNumbers, winningNumber: lotto)
