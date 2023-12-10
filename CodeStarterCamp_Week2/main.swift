//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by csp.
//  Copyright © csp. All rights reserved.
//

// 회차와 로또 번호를 저장하는 Dictionary 타입의 변수를 생성
var lottoWinningResults: [String: Set<Int>] = [:]

// 로또 당첨 번호 생성
func generateLottoNumbers() -> Set<Int> {
    var baseNumbers: [Int] = [Int](1...45)
    var randomLottoNumbers: Set<Int> = Set<Int>()
    
    for _ in 0..<6 {
        let numbersCount = baseNumbers.count - 1
        let randomIndex = Int.random(in: 0...numbersCount)
        
        randomLottoNumbers.insert(baseNumbers[randomIndex])
        baseNumbers.remove(at: randomIndex)
    }
    
    return randomLottoNumbers
}

// '로또 당첨 번호 생성 함수'(Step2)를 호출할 때마다 회차와 로또 번호를 Dictionary에 저장하는 함수를 별도로 작성
func saveLottoWinningResultWithRounds(_ rounds: Int) {
    // Key : 회차
    // Value : 로또 당첨 번호
    // 예시 Key : Value = "1회차": [1, 2, 3, 4, 5]
    for round in 1...rounds {
        lottoWinningResults["\(round)회차"] = generateLottoNumbers()
    }
}

// Dictionary에서 원하는 회차의 로또 당첨 번호를 찾기
func findLottoWinningNumbers(with round: Int) -> Set<Int> {
    if let lottoNumber = lottoWinningResults["\(round)회차"] {
        return lottoNumber
    }
    
    return []
}

// Dictionary에서 추출한 원하는 회차의 로또 당첨 번호 6개를 출력
func printLottoWinningResultWithRound(_ round: Int) {
    let lottoNumbers = findLottoWinningNumbers(with: round)
    if lottoNumbers.isEmpty {
        print("오류가 발생하였습니다. 프로그램을 다시 실행해 주세요.")
    } else {
        let formattedString: String = lottoNumbers.sorted().map(String.init).joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(formattedString) 입니다.")
    }
}

// 로또 당첨 번호를 생성한 후, Dictionary에 저장된 로또 당첨 번호를 확인
func drawLottoWinningNumbers() {
    // 로또 당첨 번호를 5번 생성
    saveLottoWinningResultWithRounds(5)
    
    // Dictionary에서 추출한 원하는 회차의 로또 당첨 번호 6개를 출력
    printLottoWinningResultWithRound(1)
    printLottoWinningResultWithRound(2)
    printLottoWinningResultWithRound(3)
    printLottoWinningResultWithRound(4)
    printLottoWinningResultWithRound(5)
}

// 결과 확인
drawLottoWinningNumbers()




/*
 Noti. 이하는 Step2에 사용한 코드
 */
func findEqualNumbers(with myNumbers: [Int], and lottoNumbers: Set<Int>) {
    let equalNumbers = lottoNumbers.intersection(myNumbers)
    if equalNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(equalNumbers) 입니다!")
    }
}

func getUserChoiceNumbers() -> [Int] {
    var myChoiceNumbers: [Int] = []
    var numberCount: Int = 0
    
    repeat {
        numberCount += 1
        print("\n\(numberCount)번째 숫자를 입력하고 엔터를 누르세요.")
        
        if let inputNumber = Int(readLine() ?? "0") {
            
            if (inputNumber >= 46) || (inputNumber < 1) {
                print("1부터 45 사이의 숫자를 입력하세요.")
                numberCount -= 1
                continue
            }
            
            if myChoiceNumbers.contains(inputNumber) {
                print("이미 입력한 숫자입니다. 다른 숫자를 다시 입력하세요.")
                numberCount -= 1
                continue
            }
            
            myChoiceNumbers.append(inputNumber)
        } else {
            print("입력에 오류가 발생하였습니다. 숫자를 다시 입력해 주세요.")
            numberCount -= 1
        }
        
    } while numberCount < 6
    
    return myChoiceNumbers
}

func playLottoGame() {
    print("환영합니다! 1부터 45 사이에서 6개의 숫자를 선택하여 로또 당첨에 도전해 보세요!")
    
    let myLottoNumbers: [Int] = getUserChoiceNumbers()
    print("\n입력한 숫자 : \(myLottoNumbers)")
    
    let randomLottoNumbers: Set<Int> = generateLottoNumbers()
    print("로또 당첨 숫자 : \(randomLottoNumbers)\n")
    findEqualNumbers(with: myLottoNumbers, and: randomLottoNumbers)
}


// 로또 게임 시작
//playLottoGame()
