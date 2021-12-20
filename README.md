
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
        print(changeSet)
        return changeSet
    }
    
    //Set를 이용해 비교해주는 함수
    func intersectionCheck () {
        var checkLottonum : Set<Int> = myLottoNum.intersection(setChangeArray(to: myLottoNumbers))
    }
    
    
    makeRandomNum(maxNum: 45)
    setChangeArray(to: myLottoNumbers )
    intersectionCheck()
    print(intersectionCheck())
    
}


/*
 let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
 
 //배열 타입의 인덱스 값들을 하나하나 set 컬렉션 변수에 옮겨 넣어주는 함수
 func checkLottoNum (myLottoNum : Set<Int>) {
 var checkLottoNumber : Set<Int> = Set<Int>()
 for count in 1...myLottoNumbers.count{
 checkLottoNumber.insert(myLottoNumbers[0])
 }
 }
 */
/*
 //6개 겹치지 않는 랜덤넘버 생성기
 func makeRandomNum() -> Set<Int> {
 while myLottoNum.count < 6 {
 myLottoNum.insert(Int.random(in: 1...45))}
 return myLottoNum }
 
 */

