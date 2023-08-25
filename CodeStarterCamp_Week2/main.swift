let myLottoNumbers: [Int] = [4, 5, 10, 18, 22, 32]


var lottoNumSet: Set<Int> = Set<Int>()

while lottoNumSet.count < 6 {
    lottoNumSet.insert(Int.random(in: 1...45))
}

print(lottoNumSet.sorted())
print(myLottoNumbers)

let matchedLottoNumbers: Set<Int> = lottoNumSet.intersection(myLottoNumbers)

if matchedLottoNumbers.count >= 1 {
    print("축하합니다! 겹치는 번호는 \(matchedLottoNumbers.sorted()) 입니다!")
}
else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
