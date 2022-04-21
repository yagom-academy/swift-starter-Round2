//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoTray = Set<Int>()
    
    repeat {
        let pickedRandomNumber = Int.random(in: 1...45)
        lottoTray.insert(pickedRandomNumber)
    } while lottoTray.count < 6
    return lottoTray
}

print(generateLottoNumbers())
