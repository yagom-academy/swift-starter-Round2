import Foundation

// Error enum
enum MismatchError: Error {
    case nonexistence
}

// 로또 번호 생성 함수
func makeLottoNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = []
    let candidates: [Int] = Array(1...45).shuffled()
    
    winningNumbers = Set(candidates.prefix(6))
    
    return winningNumbers
}

// 로또 번호 당첨 검증 함수
func verifyWinningNumbers(userNumbers: Set<Int>, officialNumbers: Set<Int>) throws {
    
    let intersectionLotto: Set<Int> = userNumbers.intersection(officialNumbers)
    let matchLotto: [String] = intersectionLotto.map(String.init)
    let matchLottoString: String = matchLotto.joined(separator: ",")
    
    guard intersectionLotto.count > 0 else {
        throw MismatchError.nonexistence
    }
    
    print("축하합니다! 겹치는 번호는 \(matchLottoString) 입니다! ")
}

// 로또 당첨 확인함수
func checkMyLotto(myNumbers: Set<Int>, realNumbers: Set<Int>){
    
    do {
        try verifyWinningNumbers(userNumbers: myNumbers, officialNumbers: realNumbers)
        
    } catch MismatchError.nonexistence {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } catch {
        print("알 수 없는 오류")
    }
}

// print("축하합니다! 겹치는 번호는 \(matchLottoString) 입니다! ")

let lotto: Set<Int> = makeLottoNumbers()
let myLottoNumbers: Set<Int> = [39, 12, 15, 23, 45, 9]

checkMyLotto(myNumbers: myLottoNumbers, realNumbers: lotto)

