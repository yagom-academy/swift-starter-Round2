func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

func inputMyLottoNumbers() -> Set<Int> {
    var myLottoNumbers: Set<Int> = []
    
    while myLottoNumbers.count < 6 {
        var myInputNumber: Int = 0
        
        print("숫자를 입력하세요 (\(myLottoNumbers.count + 1)번째 숫자): ", terminator: "")
        guard let prompt = readLine() else {
            print("잘못 입력하였습니다.")
            continue
        }
        
        guard let integerPrompt = Int(prompt) else {
            print("잘못 입력하였습니다.")
            continue
        }
        
        if integerPrompt < 1 || integerPrompt > 45 {
            print("잘못 입력하였습니다.")
            continue
        }
        
        myInputNumber = integerPrompt
        myLottoNumbers.insert(myInputNumber)
    }
    
    return myLottoNumbers
}

func compareLottoAndMyNumbers(_ myLottoNumbers: Set<Int>, _ lottoNumbers: Set<Int>) -> Void {
    let duplicatedNumbers = myLottoNumbers.intersection(lottoNumbers).sorted()
    
    if duplicatedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(duplicatedNumbers.map{String($0)}.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
