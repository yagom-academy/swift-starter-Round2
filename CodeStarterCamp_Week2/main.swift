/* func generateLottoNumber() -> Set<Int> {
 
 var makingNumbers = Set<Int>()
 while makingNumbers.count < 6 {
 makingNumbers.insert(Int.random(in: 1...45))
 }
 return makingNumbers
 
 }
 
 func checkLottoNumber() {
 
 let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
 let chosenNumber : Set<Int> = generateLottoNumber().intersection(myLottoNumbers)
 let joinedStr = chosenNumber.map { String($0) }.joined(separator: ", ")
 
 if chosenNumber.count == 0  {
 print("아쉽지만 겹치는 번호가 없습니다.")
 } else {
 print("축하합니다! 겹치는 번호는 \(joinedStr) 입니다.")
 }
 }

checkLottoNumber() */

playLottoNumber(endRound: 5)
searchLottoNumber(round: 5)
