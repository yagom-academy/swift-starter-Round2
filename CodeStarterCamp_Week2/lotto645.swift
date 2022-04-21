<<<<<<< HEAD

=======
<<<<<<< HEAD
=======

>>>>>>> a5dbcb29408642f52464c895909c200d11547934
>>>>>>> 401ad32 ([step2] lotto 번호 생성 및 맞춰보기_수정(네이밍))
//
//  lotto6:45.swift
//  CodeStarterCamp_Week2
//
//  Created by 수염 on 2022/04/19.
//

import Foundation


<<<<<<< HEAD
=======
<<<<<<< HEAD
var lottoNumber: Set<Int> = Set<Int>()

func pickLottoNumber() {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    print(lottoNumber)
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let lottoNumberList: Set<Int> = Set<Int>(lottoNumber)
let intersection: Set<Int> = lottoNumberList.intersection(myLottoNumbers)

func lottoCompareResult() {
=======
>>>>>>> 401ad32 ([step2] lotto 번호 생성 및 맞춰보기_수정(네이밍))

var lottoNumber: Set<Int> = Set<Int>()

func lottoNumberSix() {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
	print(lottoNumber)
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let lottoNumber001: Set<Int> = Set<Int>(lottoNumber)
let intersection: Set<Int> = lottoNumber001.intersection(myLottoNumbers)

func winningResult() {
<<<<<<< HEAD
=======
>>>>>>> a5dbcb29408642f52464c895909c200d11547934
>>>>>>> 401ad32 ([step2] lotto 번호 생성 및 맞춰보기_수정(네이밍))
    if intersection.count >= 1 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
    }
    else if intersection.count < 1 {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}
<<<<<<< HEAD



=======
<<<<<<< HEAD
=======



>>>>>>> a5dbcb29408642f52464c895909c200d11547934
>>>>>>> 401ad32 ([step2] lotto 번호 생성 및 맞춰보기_수정(네이밍))
