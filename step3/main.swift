//
//  main.swift
//  step3
//
//  Created by 한지석 on 2022/02/23.
//

import Foundation

var randomNumbers = Set<String>()
var lottoNumbers = [String: Array<String>]()
var roundNumbers = [String]()


func makeRandom(){
    while randomNumbers.count < 6{
        randomNumbers.insert(String(Int.random(in: 1...45)))
    }
    for randomIndex in randomNumbers.sorted(){
        roundNumbers.append(randomIndex)
    }
}

func makeRound(round: Int){
    while lottoNumbers.count < 5
    {
        makeRandom()
        let getRoundCount = lottoNumbers.count + 1
        lottoNumbers["\(getRoundCount)회차"] = roundNumbers
        
        removeNumbers()
    }
    
    let getContents = lottoNumbers["\(round)회차"] ?? [""]
    let changeContents = getContents.joined(separator: ", ")
    
    print("\(round)회차의 로또 당첨 번호는 \(changeContents) 입니다.")

}

func removeNumbers(){
    roundNumbers.removeAll()
    randomNumbers.removeAll()
}

makeRound(round: 2)


