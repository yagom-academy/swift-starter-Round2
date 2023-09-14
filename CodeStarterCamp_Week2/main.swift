//
//  main5.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/31.



import Foundation


var lottoResults: [Int: [Int]] =  generateLottoNumbersForRounds(5)
let myNumder = createLottoNumders()

displayLottoResultForRound(lottoResults: lottoResults , desiredRound: 2)

checkForOverlappingNumbers(overlappingLottoNumder: overlappingLottoNumder)

