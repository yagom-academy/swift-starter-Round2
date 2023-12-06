//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var getLotto: Int = 0;

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let lottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

for myLottoNumber in myLottoNumbers {
    
    for lottoNumber in lottoNumbers {
        
        if(lottoNumber == myLottoNumber) {
            getLotto += 1;
        }
    }
}

if(getLotto == 6) {
    print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}


var newGetLotto: Int = 0;

let newLottoNumbers: [Int] = [11, 12, 13, 14, 15, 16]

for myLottoNumber in myLottoNumbers {
    
    for newLottoNumber in newLottoNumbers {
        
        if(newLottoNumber == myLottoNumber) {
            newGetLotto += 1;
        }
    }
}

if(newGetLotto == 6) {
    print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
