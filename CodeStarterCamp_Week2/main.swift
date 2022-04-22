//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoSet: Set<Int> = Set<Int> ()

func lottoGenerator () {
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1..<45))
    }
}

func checkLotto () {
    var coordinate: Set<Int> = Set<Int> ()
    var count: Int = 0
    for tofind in myLottoNumbers {
        for lotto in lottoSet {
            if tofind == lotto {
                coordinate.insert(tofind)
            }
        }
    }
    if coordinate.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    print("축하합니다! 겹치는 번호는 ",terminator: "")
    for same in coordinate {
        count += 1
        print("\(same)",terminator: "")
        if count != coordinate.count {
            print(", ",terminator:"")
        }
    }
    print(" 입니다!")
}

lottoGenerator()
checkLotto()
