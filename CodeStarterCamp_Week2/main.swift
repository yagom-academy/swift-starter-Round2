//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func makeWinningNumbers() -> Array<Int> {
    var pickedNumbers: [Int] = []
    
    while pickedNumbers.count < 6 {
        let pickedNumber = Int.random(in: 1...45)
        if !pickedNumbers.contains(pickedNumber) {
            pickedNumbers.append(pickedNumber)
        } else {
            continue
        }
    }
    pickedNumbers.sort()
    return pickedNumbers
    }
    
var winningNumbers = makeWinningNumbers()
print("당첨 번호는 \(winningNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")

let myLottoNumbers: [Int] = [11, 22, 33, 44, 45, 46]

func checkingNumbers(){
    var matchedNumbers: [Int] = []

    for myNumber in myLottoNumbers {
        if winningNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber)
        }
    }
    if matchedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers.map {String($0)}.joined(separator: ", "))로 \(matchedNumbers.count)개 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkingNumbers()

/*
 1. 회차와 Lotto 번호들을 저장하는 Dictionary 타입의 변수 생성
 - "1회차" : [1, 2, 3, 4, 5, 6] 과 같은 Key와 Value 값을 가짐
 2. Step 2 의 로또 당첨 번호 생성 함수를 호출할 때 마다, 회차와 로또 번호를 Dictionary에 저장
 - 이를 구현하기 위해 별도의 함수 생성
 - 새로운 로또 당첨 번호를 생성하면 직전 회차에 1을 더해 금번 회차를 만들어 냄
 - 회차를 Key로, 새로운 로또 당첨 번호를 Value로 갖는 Dictionary에 저장
 3. 로또 당첨 번호를 생성한 후 Dictionary에 저장된 로또 당첨 번호를 확인
 - 로또 당첨 번호를 5번 생성
 - Dictionary에서 원하는 회차의 로또 당첨 번호를 찾음 (Optional로 안전하게 값 추출)
 - Dictionary에서 추출한 원하는 회차의 로또 당첨 번호를 아래와 같이 출력
      2회차의 로또 당첨 번호는 1, 2, 3, 4, 5, 6 입니다
 */

// 빈 Dictionary 생성
var lottoResults: [String: [Int]] = [:]

// Step2 를 실행하면서 Dictionary 를 채우는 함수
func generateLottoResults() {
    let winningNumbers = makeWinningNumbers()
    let currentRound = (lottoResults.count + 1) // 현재회차는 직전회차 + 1
    let roundKey = "\(currentRound)회차" // String 변수로 할당
    lottoResults[roundKey] = winningNumbers // 회차를 Key로 받고 당첨번호를 Value로 받음
    print("\(currentRound)회차의 로또 당첨 번호는 \(winningNumbers.map {String($0)}.joined(separator: ", ")) 입니다!") // 매핑으로 [] 제거 후 출력
}

// 로또 당첨 번호를 5번 생성
for _ in 1...5 {
    generateLottoResults()
}

func printLottoResults(round: String) {
    if let matchedNumbers = lottoResults[round] { // if-let으로 옵셔널 값 추출
        print("\(round)의 로또 당첨 번호는 \(matchedNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
    } else {
        print("\(round) 회차의 로또 당첨 번호를 찾을 수 없습니다.") // 생성된 회수 범위 밖의 값이 오면 출력
    }
}

printLottoResults(round: "2회차")

