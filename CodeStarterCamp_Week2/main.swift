
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
// step1
func drawRandomNumber() -> [Int] {
    var numbers: Set<Int> = []
    
    while numbers.count < 6 {
        let randomNubers = Int.random(in: 1...45)
        numbers.insert(randomNubers)
    }
    return numbers.sorted()
}

// step2
func compare(myNumbers: [Int]) {
    let randomNumbers = drawRandomNumber()
    var lotteryNumbers: [Int] = []
    
    for randomNumber in randomNumbers {
        if myNumbers.contains(randomNumber) {
            lotteryNumbers.append(randomNumber)
        }
    }
    
    let convertedNumbersToTexts = lotteryNumbers.map { String($0) }
    let bindedText = convertedNumbersToTexts.joined(separator: ",")
    
    if lotteryNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(bindedText) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
compare(myNumbers: [3, 5, 12, 22, 26, 31])





// step3

//var lottoNumber = [String: [Int]]()
//var round : Int = 1
//
//func save() {
//    let numberDraw = randomNumberDraw()  //랜덤 숫자
//    lottoNumber["\(round)회차 :"] = numberDraw   // 회차 : 번호
////    print("what \(lottoNumber)")
//    round += 1   // 함수 호출때마다 회차 +1
//}
////save()
//
//func numberCheck(checkRound: Int) {
//    let numberDraws = randomNumberDraw()  //랜덤 숫자
//
//    for _ in 1...5 {
//        save()  // 1회차  [번호]  5번 돈다
//    }
//
//     let check = lottoNumber["\(checkRound)회차"] // 여기서 벨류 값 아....
//        print("== \(check)")
//}
//numberCheck(checkRound: 3)
