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
var lottoNumbers: [Int: [Int]] = [Int: [Int]]() //로또 회차번호, 당첨번호를 저장하기 위한 Dictionary
var lottoDegreeCount: Int = 0; //로또 회차를 저장하기 위한 변수

// 변경점
// : 당첨번호에 대한 Set<Int> 타입을 리턴하는 함수에서 반환 값이 없는 Void 함수로 변경
// : 당첨번호 생성 후 makeLottoNumbersHistory 함수를 호출하여 해당 회차에 대한 당첨번호 정보를 Dictionary에 저장
func createLottoNumbers() {
    var lottoWinNumbers: Set<Int> = Set<Int>()
    while lottoWinNumbers.count < 6 {
        let randomInt: Int = Int.random(in: 1...45)
        lottoWinNumbers.insert(randomInt)
    }
    makeLottoNumbersHistory(lottoNum: lottoWinNumbers)
}

//회차 별 당첨번호 기록을 저장을 위한 함수
func makeLottoNumbersHistory(lottoNum: Set<Int>) {
    lottoDegreeCount = lottoDegreeCount + 1 //회차 1 증가
    var lottoHistory: [Int] = [Int]()
    for num in lottoNum {
        lottoHistory.append(num)
    }
    lottoNumbers[lottoDegreeCount] = lottoHistory
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

for _ in 0...4 {
    createLottoNumbers()
}

findLottoHistory(count: 1)
findLottoHistory(count: 2)
findLottoHistory(count: 3)
findLottoHistory(count: 4)
findLottoHistory(count: 5)
findLottoHistory(count: 6)

