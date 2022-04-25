//
//  STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [4,8,23,27,44,32]
var lottoSet: Set<Int> = Set<Int> ()

func generateLotto () {
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<46))
    }
}

func checkLotto () {
    var coincidence: Set<Int> = Set<Int> ()
    var printedCount: Int = 0
    for toFind in myLottoNumbers {
        for lottoNumber in lottoSet {
            if toFind == lottoNumber {
                coincidence.insert(toFind)
            }
        }
    }
    if coincidence.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    print("축하합니다! 겹치는 번호는 ",terminator: "")
    for accordNumber in coincidence {
        printedCount += 1
        print("\(accordNumber)",terminator: "")
        if printedCount != coincidence.count {
            print(", ",terminator:"")
        }
    }
    print(" 입니다!")
}


