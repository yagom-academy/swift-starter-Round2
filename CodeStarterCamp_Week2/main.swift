//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by csp.
//  Copyright © csp. All rights reserved.
//

/*
 Step2 todo#1 : 로또 당첨 번호를 생성하는 함수 (Step1의 순서도를 옮김)
 */

func generateLottoNumbers() -> Set<Int> {
    var baseNumbers: [Int] = [Int](1...45)
    var randomLottoNumbers: Set<Int> = Set<Int>()

    while randomLottoNumbers.count < 6 {
        if let randomNumber = baseNumbers.randomElement() {
            
            if let randomNumberIndex = baseNumbers.firstIndex(of: randomNumber) {
                randomLottoNumbers.insert(randomNumber)
                baseNumbers.remove(at: randomNumberIndex)
            }
        }
    }
    
    return randomLottoNumbers
}

/*
 Step2 todo#3 : 선택한(찍은) 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
 */
func findEqualNumbers(with myNumbers: [Int], and lottoNumbers: Set<Int>) {
    let equalNumbers = lottoNumbers.intersection(myNumbers)
    if equalNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(equalNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
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
        }
        
    } while numberCount < 6
    
    return myChoiceNumbers
}

func playLottoGame() {
    print("환영합니다! 1부터 45 사이에서 6개의 숫자를 선택하여 로또 당첨에 도전해 보세요!")
    
    /*
     Step2 todo#2 : 내가 선택한(찍은) 번호 배열을 myLottoNumbers 변수에 할당
     Step2 todo#4 : 6개의 번호를 상수 형태로 저장
     */
    let myLottoNumbers: [Int] = getUserChoiceNumbers()
    print("\n입력한 숫자 : \(myLottoNumbers)")
    
    let randomLottoNumbers: Set<Int> = generateLottoNumbers()
    print("로또 당첨 숫자 : \(randomLottoNumbers)\n")
    findEqualNumbers(with: myLottoNumbers, and: randomLottoNumbers)
}


// 로또 게임 시작
playLottoGame()
