func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        
        if lottoNumbers.contains(randomNumber) == false {
            lottoNumbers.append(randomNumber)
        }
    }
    
    return lottoNumbers
}

func inputMyLottoNumbers() -> [Int] {
    var myLottoNumbers: [Int] = []
    
    while myLottoNumbers.count < 6 {
        var myInputNumber: Int = 0
        
        print("숫자를 입력하세요 (\(myLottoNumbers.count + 1)번째 숫자): ", terminator: "")
        if let prompt = readLine() {
            if let integerPrompt = Int(prompt) {
                if integerPrompt < 1 || integerPrompt > 45 {
                    print("잘못 입력하였습니다.")
                    continue
                } else {
                    myInputNumber = integerPrompt
                }
            } else {
                print("잘못 입력하였습니다.")
                continue
            }
        } else {
            print("잘못 입력하였습니다.")
            continue
        }
        
        if myLottoNumbers.contains(myInputNumber) == false {
            myLottoNumbers.append(myInputNumber)
        } else {
            print("중복된 숫자입니다.")
        }
    }
    
    return myLottoNumbers
}

func compareLottoNumbers(_ myLottoNumbers: [Int], _ lottoNumbers: [Int]) -> Void {
    let duplicatedNumbers = [Int](Set<Int>(myLottoNumbers).intersection(Set<Int>(lottoNumbers))).sorted()
    
    if duplicatedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(duplicatedNumbers.map{String($0)}.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
