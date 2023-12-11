//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//나의 선택한 복권번호 6자리
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


//생성할 당첨번호 회차 수를 입력받아서 해당 회차 개수만큼 정보를 생성하여 Dictionary 컬렉션 타입으로 반환하는 함수
func createLottoNumbers(createCount: Int) -> [Int: [Int]] {
    var tempLottoNumbers: [Int: [Int]] = [Int: [Int]]()
    var loopCounter: Int = 1
    while loopCounter <= createCount {
        var lottoWinNumbers: Set<Int> = Set<Int>()
        while lottoWinNumbers.count < 6 {
            let randomInt: Int = Int.random(in: 1...45)
            lottoWinNumbers.insert(randomInt)
        }
        tempLottoNumbers[loopCounter] = [Int](lottoWinNumbers)
        loopCounter = loopCounter + 1
    }
    return tempLottoNumbers
}

// Round2 - [STEP 2]에서 사용했던 본인 로또번호와 당첨번호를 비교하여 당첨결과를 출력하는 함수
// 변경점
// : 파라미터 부분 winLottoNums:Set<Int> 에서 winLottoNums:Array<Int>로 변경
// : Dictionary에 회차 별 당첨번호에 대한 정보를 Array<Int>로 저장했기 때문에 당첨번호 비교를 하려면 Array<Int>로 변경되어야 하기 때문
func compareLottoNumbers(myLottoNums: [Int], winLottoNums: [Int]) {
    var compareNum: [Int] = [] //당첨된 번호를 넣어주기 위한 Array
    for myLottoNum in myLottoNums {
        if (winLottoNums.contains(myLottoNum)) {
            compareNum.append(myLottoNum)
        }
    }
    if (compareNum.count > 0) {
        let printResults = compareNum.map{String($0)}.joined(separator: ",")
        print("축하합니다! 겹치는 번호는 \(printResults) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

//회차 정보를 입력받아 dictionary에서 해당 회차의 당첨번호 정보를 출력하는 함수
func findLottoHistory(count: Int) {
    if let result = lottoNumbers[count] {
        let printResults = result.map{String($0)}.joined(separator: ", ")
        print("\(count)회차 로또 당첨 번호는 \(printResults) 입니다.")
    } else {
       print("\(count)회차 로또 당첨 번호 정보가 없습니다.")
    }
}


let lottoNumbers: [Int: [Int]] = createLottoNumbers(createCount: 5)
findLottoHistory(count: 1)
findLottoHistory(count: 2)
findLottoHistory(count: 3)
findLottoHistory(count: 4)
findLottoHistory(count: 5)

