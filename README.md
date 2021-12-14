코드 스타터 캠프 2주차 미션을 위한 저장소입니다.

구현로직
1. generateLotteryNumbers(amount: Int) -> Set<Int> {} 함수를 생성한다. 
2. 중복되지않는 수를 담을 수 있는 Set<Int> 타입의 변수를 생성한다. (변수명:  numbers)
3. while문을 생성해준다.
4. 만들고자 하는 총 개수인 amount 매개변수만큼 numbers에 랜덤 수를 넣어주는 조건을 만든다.
5. apple이 제공하는 insert() 메서드를 통해 numbers에 값을 할당한다
6. numbers.count가 총 amount개가 되면 numbers를 반환한다.

실행로직
1. 첫번째 랜덤숫자생성
2. Set<Int>타입인 변수에 값을 할당한다.
3. 1~2를 5번 더 반복한다.
4. numbers.count == amount 의 조건이 성립되면 numbers를 반환한다.
