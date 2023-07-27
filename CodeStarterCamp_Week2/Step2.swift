//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - 로또 번호 생성 함수
func makeLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

// MARK: - 내 번호와 로또 당첨번호 맞추는 함수
func lottoMachine(winnerNumbers: Array<Int>) -> Array<Int> {
    
    var count = 0
    var correct = [Int]()
    
    for i in winnerNumbers {
        if myLottoNumbers.contains(i) {
            count += 1
            correct.append(i)
        }
    }
    return correct
}


func step2Solution() {
    let winnerNumbers = Array(makeLottoNumbers())
    let correctNumbers = lottoMachine(winnerNumbers: winnerNumbers)
    
    if correctNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 ",terminator: "")
        for i in correctNumbers {
            if i != correctNumbers[correctNumbers.count-1] {
                print(i, terminator: ",")
            }
            else {
                print(i, terminator: " 입니다!")
            }
        }
        print("")
    }
}


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
step2Solution()



// MARK: 아래 코드에서 3을 꺼내 그 값을 출력하는 가장 안전한 코드를 작성해보세요.
let someArray: [[[Int?]?]?] = [[[1, 2], nil, [3, nil, 4], nil, [5, 6]]]
if let num = someArray[0]?[2]?[0] {
    print(num)
}
else {
    print("해당 값은 optional 입니다.")
}
