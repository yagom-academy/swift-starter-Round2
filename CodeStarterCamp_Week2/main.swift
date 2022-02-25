func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count != 6 {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }

    return lottoNumbers
}

func changeStringType(integerNumbers: Set<Int>) -> Set<String> {
    var literalNumbers: Set<String> = Set<String>()
    
    for member in integerNumbers {
        literalNumbers.insert(String(member))
    }
    
    return literalNumbers
}

func printIntersectionNumber(intersectionNumber: Set<String>) {
    print("축하합니다! 겹치는 번호는 " + intersectionNumber.sorted().joined(separator: ", ") + " 입니다!")
}

func compareNumbers(chooseNumbers: Set<Int>, winningNumbers: Set<Int>) -> Set<Int> {
    let sameNumbers = chooseNumbers.intersection(winningNumbers)
    
    return sameNumbers
    /*
    let literalNumber = changeLiteral(integerNumber: intersectionNumber)
    
    if literalNumber.isEmpty != true {
        printIntersectionNumber(intersectionNumber: literalNumber)
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
     */
}

func printLottoResult(of sameNumbers: Set<Int>) {
    let sameLiteralNumbers = changeStringType(integerNumbers: sameNumbers)
    
    if sameLiteralNumbers.isEmpty != true {
        printIntersectionNumber(intersectionNumber: literalNumber)
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}


let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var winnigLottoNumbers = makeLottoNumbers()

// 번호를 체크하자
let sameNumbers = compareNumbers(chooseNumbers: myLottoNumbers, winningNumbers: winnigLottoNumbers)
// 당첨여부를 출력하자
printLottoResult(of: sameNumbers)



