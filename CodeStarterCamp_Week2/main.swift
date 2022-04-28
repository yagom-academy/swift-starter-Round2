//
//  makeLottoGame.swift
//  CodeStarterCamp_Week2
//
//  Created by 방선우 on 2022/04/27.
//

import Foundation

/*
 🪐 1. 반복문을 사용하실 때, while이 아닌 repeat while을 사용하신 이유가 있을까요?
 -> 앨리님께 예전 pr에서 확인 질문 드린 것 처럼 두 반복문차이에대해 예전에 잘못이해하고 있었는데 단지 조건문이 false일때 실행구문을 최소한 한번실행시키느냐 아니냐의 차이였어요. 이 lotto번호의 경우 굳이 최소한 한번의 실행이 필요없고 6개의 램덤수가 뽑여야하는 상황이기 때문에 while로 표현해줘도 될 것 같습니다.
 🪐 2. 지금 방식은 6개의 랜덤숫자를 뽑기 위해서, 45개의 숫자를 추가하고,
 생성한 숫자를 다시 삭제하고 있는 것 같아요~ -> 그럼 애초에 6개만 골라서 생성하면 되네
 Int.random에 대해서 공부해보시면 좋을 것 같습니다! -> 비효율적이라서 공부하라는 뜻
 3. 지금 myLottoNumbers와 winNumbers 두개의 전역변수를 활용하고 계시는데, 전역변수와 지역변수에대해 공부해보시면 좋을 것 같아요!
 4. 출력 예제가 요구사항과 조금 다른 것 같습니다 👀
 🪐 5. 결과를 출력해주는 메서드인데, 네이밍을 보면 매칭하는 역할인 것 같아요!(func matchLottoNumber())
 🪐 6. 번호의 범위가 1~1000이면 1000번을 돌아야하는데 -> 조건을 검사한다는 뜻인가?
 너무 비효율적이지 않을까요?ㅎㅎ
 */

//MARK: - 순서도 수정본


func makeLottoNumberCollection() -> Set<Int> {
    var drawLottoNumbers: Set<Int> = Set<Int>()
    var lottoNumbers: Set<Int> = Set<Int>()
   
    for _ in 1...6 {
        drawLottoNumbers.insert(Int.random(in:1...45))
    }
    
    if drawLottoNumbers.count == 6 {
        lottoNumbers = drawLottoNumbers
    }
    
    return lottoNumbers
}

func matchMyLottoNumbers() -> Set<Int> {
        let myLottoNumbers: [Int] = [5, 1, 44, 35, 29, 10]
    let makeLottoNumberCollection: [Int] = makeLottoNumberCollection().sorted()
        var winNumbers: Set<Int> = Set<Int>()
        
        for i in myLottoNumbers {
            if makeLottoNumberCollection.contains(i) {
                winNumbers.insert(i)
            }
        }
        return winNumbers
    }

func extractWinningNumbers() {
    
}

    func sayWinningStatus(){
        let match = matchMyLottoNumbers()
        
        if match.count > 0 {
            func extractWinningNumbers() {
            for i in match {
                print(i, terminator: ", ")
            }
            }
            print("축하합니다! 겹치는 번호는", terminator: " ")
            extractWinningNumbers()
            print("입니다.", terminator: "")
        } else {
            print("아쉽지만 겹치는 숫자가 없습니다.")
        }
    }
    sayWinningStatus()
