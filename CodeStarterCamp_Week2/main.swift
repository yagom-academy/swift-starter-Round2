//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func createLottoNumber() -> Set<Int> {
	
	var randomLotto: Set<Int> = []
	
	while randomLotto.count < 6 {
		randomLotto.insert(Int.random(in: 1...45))
	}
	
	return randomLotto
}
