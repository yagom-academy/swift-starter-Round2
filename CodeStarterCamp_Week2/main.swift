//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

for _ in 1...5{
    makeLottoNumbers(count: 6)
}
if let value:[Int] = lottoHistory["1회차"]{
    var intNumbers: [Int] = []
    var stringNumbers: [String] = []
    
    for num in value{
        intNumbers.append(num)
        intNumbers.sort()
    }
    
    for num in intNumbers{
        stringNumbers.append(String(num))
    }
    
    print("1회차의 로또 당첨 번호는 \(stringNumbers.joined(separator: ", ")) 입니다.")
}
