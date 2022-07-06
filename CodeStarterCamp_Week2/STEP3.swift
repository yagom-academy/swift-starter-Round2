import Foundation

var lottoGames = [String: Array<Int>]()

func createLottoGames(totalRound: Int) -> Dictionary<String, Array<Int>> {
    for round in 1...totalRound {
        lottoGames["\(round)회차"] = Array(createLottoNumbers())
    }
    return lottoGames
}

func createLottoNumbers() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}

func optinalGame(gameRound: Int) -> String {
    var resultLottoNumbers: String = ""
    guard let chosenRound = lottoGames["\(gameRound)회차"] else {
        return "아직 진행되지 않았습니다."
    }
    
    resultLottoNumbers = arrangeNumber(numbers: chosenRound)
    return resultLottoNumbers
}

func showChosenGame(chosenRound: Int, totalRound: Int) {
    let lottoGames = createLottoGames(totalRound: totalRound)
    let resultLottoNumbers = optinalGame(gameRound: chosenRound)
    if chosenRound>totalRound {
        print("\(chosenRound)회차의 로또 당첨 번호는 \(resultLottoNumbers) ")
    }
    else{
        print("\(chosenRound)회차의 로또 당첨 번호는 \(resultLottoNumbers) 입니다.")
    }
}

func arrangeNumber(numbers: Array<Int>) -> String {
    var arraylottoNumbers: [String] = []
    for numbers in numbers {
        arraylottoNumbers.append(String(numbers))
    }
    let resultNumbers = arraylottoNumbers.joined(separator: ", ")
    return resultNumbers
}
