
func makeLottoNumbers() -> Array<Int> {
    let initNumbers = [Int](1...45)
    let lottoNumbers = initNumbers.shuffled()[0...5].sorted()
    
    return lottoNumbers
}
