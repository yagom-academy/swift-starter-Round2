let myLottoNumbers: Set<Int> = [4, 5, 10, 18, 22, 32]

func makeLottoSet() -> Set<Int> {
    var selectedLottoNumbers: Set<Int> = []
    
    repeat {
        selectedLottoNumbers.insert(Int.random(in: 1...45))
    } while selectedLottoNumbers.count < 6
    
    return selectedLottoNumbers
}

let winningNumbers = makeLottoSet()

print("이번의 당첨 번호 : \(winningNumbers.sorted())")
print("나의 행운의 번호 : \(myLottoNumbers.sorted())")

let score: Set<Int> = myLottoNumbers.intersection(winningNumbers)

if score.count >= 1 {
    print("축하합니다. 겹치는 번호는 \(score.sorted()) 입니다!")
}
else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
