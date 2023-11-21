//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func printLotto(){
    var saveNumber: Set<Int> = []
    
    while saveNumber.count < 5{
        let randomNumber = 1 + Int(arc4random_uniform(45))
        saveNumber.insert(Int(randomNumber))}
    print(saveNumber)
}
printLotto()
