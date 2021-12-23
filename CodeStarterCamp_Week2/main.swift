//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 김동욱 on 2021/12/20.

import Foundation

func makeLotto (){
    
    var winningLottoNumber : Set<Int> = Set<Int>()
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var intersectionNumber : Set<Int> = Set<Int>()
    
    func makeRandomNum() {
        while winningLottoNumber.count < 6 {
            winningLottoNumber.insert(Int.random(in: 1...45))
        }
    }
    
    func intersectionCheck (winningNumber : [Int], makeLottoNumber : Set<Int>) {
        intersectionNumber = makeLottoNumber.intersection(winningNumber)
    }
    
    func printIntersectionNumber (){
        print("로또 당첨 번호는 :", winningLottoNumber)
        if intersectionNumber.count > 0 {
            print("축하합니다! 겹치는 번호는\(intersectionNumber) 입니다!")
        } else {
            print("아쉽지만 겹치는 번호가 없습니다")
        }
    }
    
    makeRandomNum()
    intersectionCheck(winningNumber: myLottoNumbers, makeLottoNumber: winningLottoNumber)
    printIntersectionNumber()
}
makeLotto()
