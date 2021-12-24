//
//  step2 Ex1.swift.swift
//  CodeStarterCamp_Week2
//
//  Created by 김동욱 on 2021/12/20.
//

// step2의 문제속 배열을 Set 타입으로 변경해준뒤 교집합을 이용하는 방법
// .intersection 메소드를 이용해 두개의 set 을 비교하게끔 하는 함수
// .count 프로퍼티를 이용해 Set,Set 두개를비교한 Set에 저장된 값들의 갯수가6개 라면 당첨 그렇지 않다면 꽝

//문제점
// 겹치는 숫자를 출력해줄수있어야하는데 set안의 값들을 갯수로 비교하기때문에 6개가 중복되는지 아닌지는 알수있지만
// 6개미만 1,4개 이런식으로 중복된다면 꽝으로만 표기되게됨

func makeLottonumber(){
    //저장된 로또번호
    var myLottoNum : Set<Int> = Set<Int>()
    
    //step2 로또번호
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    
    //겹치지 않는 랜덤넘버 생성기
    func makeRandomNum(maxNum : Int ) {
        while myLottoNum.count < 6 {
            myLottoNum.insert(Int.random(in: 1...maxNum))}
        print("내가뽑은 로또번호 : \(myLottoNum)")
    }
    
    //Array를 Set로 바꿔주는 함수
    func setChangeArray(to arrayName: [Int]) -> Set<Int> {
        let changeSet : Set<Int> = Set(arrayName)
        return changeSet
    }
    
    //Set를 이용해 비교해주는 함수
    func intersectionCheck () {
        var checkLottonum : Set<Int> = myLottoNum.intersection(setChangeArray(to: myLottoNumbers))
        if checkLottonum.count == 6 {
            print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
        } else { print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
    
    makeRandomNum(maxNum: 45)
    print("step2 로또 번호 \(myLottoNumbers)")
    setChangeArray(to: myLottoNumbers )
    intersectionCheck()
    
    
}
}
