func makeRounds() -> [String:[Int]] {
    var lottoDict = [String:[Int]]()
    for i in 1...5{
        let lottoNumbers = makeLottoNum()
        lottoDict["\(i)회차"] = lottoNumbers
    }
    
    return lottoDict
}
