//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 쌩 on 2022/04/30.
//

import Foundation


class Step2CheckLotto {
    
    func addPickedLotto() -> Set<Int> {
        var lotteryWinningNumber = Set<Int>()
        while lotteryWinningNumber.count < 6 {
            let randomInt = Int.random(in: 1...45)
            lotteryWinningNumber.insert(randomInt)
        }
        return lotteryWinningNumber
    }

    func collectInterection() -> [Int] {
        let lotteryWinningNumber = addPickedLotto()
        let myLottoNumbers: Set<Int> = [6, 13, 17, 27, 35, 42]
        let intersectionSet = myLottoNumbers.intersection(lotteryWinningNumber)
        let intersection = intersectionSet.sorted()
        return intersection
    }

    func makeIntersectionArrayToString(intersection: [Int]) {
        var congratulatoryMessage : String = ""
        let stringArray = intersection.map { String($0) }
        congratulatoryMessage = stringArray.joined(separator: ", ")
        congratulatoryMessage = "축하합니다! 겹치는 번호는 " + congratulatoryMessage + " 입니다!"
        print(congratulatoryMessage)
    }

    func checkMyLotto() {
        let intersection = collectInterection()
        switch intersection.count {
        case 0: print("아쉽지만 겹치는 번호가 없습니다.")
        case 1...6:
            makeIntersectionArrayToString(intersection: intersection)
        default:
            print("Error");
        }
    }
}
