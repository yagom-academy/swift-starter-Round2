import Foundation

//내가 임의로 정한 6개의 숫자 컬렉션
let myLottoNumbers: Set<Int> = [3,7,8,23,29,43]

//로또번호 생성함수
func makeLottoNumber() -> Set<Int> {
    var lottoNumber = Set<Int>()
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}

//세트값 인트배열 변환시켜주는 함수
func makeSetToArray(setNumbers: Set<Int>) -> [Int] {
    var arraylottoNumbers: [Int] = []
    
//Set값을 스트링으로 -> append해서 다시 array로 바꿔주는 반복문 (중요)
    for setNumber in setNumbers {
        arraylottoNumbers.append(setNumber)
    }
//    let numbersStr = arraylottoNumbers.joined(separator: ", ")
    return arraylottoNumbers
}


var lottoDictionary = Dictionary<String, [Int]>()

func makeLottoDictionary(roundNumber: Int) -> Dictionary<String, [Int]> {
    
    //라운드수만큼 딕셔너리 배열만들기
    for num in 1...roundNumber {
        lottoDictionary["\(num)회차"] = makeSetToArray(setNumbers: makeLottoNumber())
    }
    return lottoDictionary
}

//5번 로또번호를 생성하는 전역변수
var resultLottoNumber: Dictionary = makeLottoDictionary(roundNumber: 5)

func findLototRound(lottoRoundNumber: Int) {

    //if let으로 옵셔널을 벗겨주는 동시에 if let 구문안에서 [Int] -> String 으로 바꿔주는 함수
    if let haslottoNumber = resultLottoNumber["\(lottoRoundNumber)회차"] {
    var arraylottoNumbers: [String] = []
        for numbers in haslottoNumber {
              arraylottoNumbers.append(String(numbers))
          }
    let finalNumbers = arraylottoNumbers.joined(separator: ", ")
        
        print("\(lottoRoundNumber)회차의 로또 당첨번호는 \(finalNumbers) 입니다.")
    } else {
        print("값이없습니다")
    }
}

//5번실행하고 3회차 찾기
findLototRound(lottoRoundNumber: 3)
findLototRound(lottoRoundNumber: 3)
findLototRound(lottoRoundNumber: 3)


