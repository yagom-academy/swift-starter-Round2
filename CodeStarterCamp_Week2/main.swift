var formerLottoNumbers = [String: [String]]()
for i in 1...5{
    let lottoNumbers = makeLottoNumString()
    formerLottoNumbers["\(i)회차"] = lottoNumbers
}

if let selectedRound = formerLottoNumbers["2회차"]{
    let selectedRoundStr = selectedRound.joined(separator: ",")
    print("2회차의 로또 당첨 번호는 \(selectedRoundStr) 입니다.")
}



