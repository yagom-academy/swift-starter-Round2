//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lotteryWinningNumber = Set<Int>()
@discardableResult //아래 함수의 리턴값이 사용되지 않아도 에러를 띄우지 않음.
// 당첨로또넘버 배열에 1~45 사이의 무작위 수 6개를 추가.
func addPickedLottery() -> Set<Int> {
    while lotteryWinningNumber.count < 6 {
        let randomInt = Int.random(in: 1..<46)
        lotteryWinningNumber.insert(randomInt)
    }
    return lotteryWinningNumber
}
addPickedLottery()
//print(lotteryWinningNumber.sorted()) //뽑힌 로또넘버 확인
var myLottoNumbers: Set<Int> = [6, 13, 17, 27, 35, 42]

var intersection = myLottoNumbers.intersection(lotteryWinningNumber)
var intersectionSorted = intersection.sorted()

func printIntersectionAtOnce() {
    switch intersectionSorted.count {
    case 1:
        print(intersectionSorted[0], terminator: " ")
    case 2:
        print(intersectionSorted[0], terminator: ", ")
        print(intersectionSorted[1], terminator: " ")
    case 3:
        print(intersectionSorted[0], terminator: ", ")
        print(intersectionSorted[1], terminator: ", ")
        print(intersectionSorted[2], terminator: " ")
    case 4:
        print(intersectionSorted[0], terminator: ", ")
        print(intersectionSorted[1], terminator: ", ")
        print(intersectionSorted[2], terminator: ", ")
        print(intersectionSorted[3], terminator: " ")
    case 5:
        print(intersectionSorted[0], terminator: ", ")
        print(intersectionSorted[1], terminator: ", ")
        print(intersectionSorted[2], terminator: ", ")
        print(intersectionSorted[3], terminator: ", ")
        print(intersectionSorted[4], terminator: " ")
    case 6:
        print(intersectionSorted[0], terminator: ", ")
        print(intersectionSorted[1], terminator: ", ")
        print(intersectionSorted[2], terminator: ", ")
        print(intersectionSorted[3], terminator: ", ")
        print(intersectionSorted[4], terminator: ", ")
        print(intersectionSorted[5], terminator: " ")
    default:
            print("")
        }
}

func checkMyLottery() {
    if intersectionSorted.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }    else {
        print("축하합니다 겹치는 번호는", terminator: " ")
       printIntersectionAtOnce()
        print("입니다!")
    }
}
checkMyLottery()

