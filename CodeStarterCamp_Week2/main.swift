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

//세트값 스트링으로 변환시켜주는 함수
func changeToStr(setNumber: (Set<Int>)) -> String {
    var arraylottoNumbers: [String] = []
    
//Set값을 스트링으로 -> append해서 다시 array로 바꿔주는 반복문 (중요)
    for setNumber in setNumber {
        arraylottoNumbers.append(String(setNumber))
    }
    let numbersStr = arraylottoNumbers.joined(separator: ", ")
    return numbersStr
}

//직전회차에 1더해서 딕셔너리 재생성
func makeLottoDic(roundNumber: Int) -> Dictionary<Int,String>{
    var lottoDictionary = [ Int : String ]()
    //라운드수만큼 딕셔너리 배열만들기
    for num in 1...roundNumber {
        lottoDictionary[num] = changeToStr(setNumber: makeLottoNumber())
    }
    return lottoDictionary
}

//5번실행하고 no.3번을 찾고싶음 playRoundNumber = 5 / findRoundNumber =3
func findLototRound(playRoundNumber: Int , findRoundNumber: Int) {
    
    let findLottoDic: Dictionary =
            makeLottoDic(roundNumber: playRoundNumber)

    if let wantToFindDic = findLottoDic[findRoundNumber] {
        print("\(findRoundNumber)회차: \(wantToFindDic)")
    } else{
        print("값이없습니다")
    }
}

findLototRound(playRoundNumber: 5, findRoundNumber: 3)
findLototRound(playRoundNumber: 5, findRoundNumber: 1)
findLototRound(playRoundNumber: 5, findRoundNumber: 4)
