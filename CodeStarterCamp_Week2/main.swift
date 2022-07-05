var formerLottoNumbers = [String: [Int]]()

for i in 1...5{
    let lottoNumbers = makeLottoNum()
    formerLottoNumbers["\(i)회차"] = lottoNumbers
}

if let selectedRound = formerLottoNumbers["2회차"]{
    
    var selectedRoundString = [String]()
    for num in selectedRound{
        selectedRoundString.append(String(num))
    }
    print("2회차의 로또 당첨 번호는 \(selectedRoundString.joined(separator: ",")) 입니다.")
}



