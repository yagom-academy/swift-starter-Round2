func drawLotto() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count != 6 {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }

    return lottoNumbers
}

func changeLiteral(integerNumber: Set<Int>) -> Set<String> {
    var literalNumber: Set<String> = Set<String>()
    
    for member in integerNumber {
        literalNumber.insert(String(member))
    }
    return literalNumber
}

func checkNumber(chooseNumber: Set<Int>, winningNumber: Set<Int>) {
    let intersectionNumber = chooseNumber.intersection(winningNumber)
    let literalNumber = changeLiteral(integerNumber: intersectionNumber)
    
    if intersectionNumber.isEmpty != true {
        /*
        print("축하합니다! 겹치는 번호는", terminator: " ")
        print(literalNumber.joined(separator: ", "))
        // printSet(intersectionNumber: intersectionNumber)
        print("입니다!")
        */
        print("축하합니다! 겹치는 번호는 " + literalNumber.sorted().joined(separator: ", ") + "입니다!")
        
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var lotto = drawLotto()
print(lotto)
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
checkNumber(chooseNumber: myLottoNumbers, winningNumber: lotto)
