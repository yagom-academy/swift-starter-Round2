//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Jiyoung Lee on 2022/04/29.
//

import Foundation

var lottoGames = [String: Array<Int>]()

func createLottoGame(drawNumber: Int, totalGameNumber: Int) -> Dictionary<String, Array<Int>>{
    for i in 1...totalGameNumber {
        lottoGames["\(i)회차"] = Array(createWinNumbers(number: drawNumber)).sorted()
    }
    print(lottoGames)
    return(lottoGames)
}

func showEachGame(totalGameNumber:Int, gameNumber:Int) -> String{
    var winNumberToString: String = ""
    if let chosenGame = lottoGames["\(gameNumber)회차"] {
        winNumberToString = chosenGame.map {String($0)}.joined(separator: ", ")
    }
    print(winNumberToString)
    return winNumberToString
}

func printEachGame(drawNumber:Int, gameNumber: Int, totalGameNumber: Int) {
    let lottoGames = createLottoGame(drawNumber: drawNumber, totalGameNumber: totalGameNumber)
    let winNumberToString = showEachGame(totalGameNumber: totalGameNumber, gameNumber: gameNumber)
    print("\(gameNumber)회차의 로또 당첨 번호는 \(winNumberToString) 입니다.")
}
