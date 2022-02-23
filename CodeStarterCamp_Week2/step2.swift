//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Yelin Hong on 2022/02/22.
//

//import Foundation
//
////Step1의 순서도를 바탕으로 로또 당첨 번호를 생성하는 함수를 생성합니다.
//func generateLottoNumbers() -> Set<Int> {
//    let numbers: Array<Int> = Array(1...45)
//    let randomNumbers = numbers.shuffled()
//    let lottoNumbers: Set<Int> = Set(randomNumbers[0...5])
//    return lottoNumbers
//}
//
//let lottoNumbers = generateLottoNumbers()
//
////내가 찍은 번호 배열을 myLottoNumbers 변수에 할당합니다.
//let myLottoNumbers: Set<Int> = [5, 13, 23, 25, 37, 42]
//
////찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수를 생성합니다.
//func compareLottoNumbers(myLottoNumbers: Set<Int>, with lottoNumbers: Set<Int>) {
//    let intersectSet: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
//    if intersectSet.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    } else {
//        var finalAnswer = ""
//        var lottoNumbersLength = 0
//        let intersectSetLength = intersectSet.count
//        let isLast = intersectSetLength == lottoNumbersLength + 1
//        for number in intersectSet {
//            let numberString = String(number)
//            if isLast == true {
//                finalAnswer += numberString
//            } else {
//                finalAnswer += numberString + ", "
//            }
//            lottoNumbersLength += 1
//        }
//        print("축하합니다! 겹치는 번호는 \(finalAnswer) 입니다!")
//    }
//}
