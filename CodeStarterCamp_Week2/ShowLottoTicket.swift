//
//  PrintSecondWinningLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 정선아 on 2022/04/25.
//

import Foundation

//해당 회차의 로또 당첨 번호를 찾고 출력해주는 함수
func showLottoTicket(round: Int, totalCount: Int) {
    let lottoTickets = buyLottoTicket(count: totalCount)
    
    guard let ticketToShow = lottoTickets["\(round)회차"] else {
        print("해당 회차의 로또 당첨 번호를 찾을 수 없습니다.")
        return
    }
    
    print("\(round)회차의 로또 당첨 번호는 \(convertToString(from: ticketToShow)) 입니다.")
}

//5번 생성한 로또 당첨번호를 딕셔너리에 저장하는 함수
func buyLottoTicket(count: Int) -> [String: [Int]] {
    var lottoTickets = [String: [Int]]()
    
    for round in 1...count {
        lottoTickets.updateValue(pickLottoNumbers(), forKey: "\(round)회차")
    }
    return lottoTickets
}
