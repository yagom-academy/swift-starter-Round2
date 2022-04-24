Step2에서 사용하던 createLotto() 함수와 convertToString() 함수는 그대로 사용하였습니다.
다만 출력시 깔끔함을 위해서 createLotto()함수의 return 값에 .sorted()를 붙여주었습니다.


main 파일     
       
10 - count는 현재 lottoDictionary에서 key값의 갯수를 나타냅니다.      
12 - addLotto(number: Int) 함수를 통해 number의 수만큼 lottoDictionary의 값을 추가합니다.     
13 - findLotto(number: Int) 함수를 통해 n회차(number) 로또의 숫자를 출력합니다.       
      
method 파일     
 - findLotto 함수         
  5 - numberToString의 값은 lottoDictionary의 Key 값인 "~회차"로 해주기 위해서 convertToString()함수를 사용합니다.     
     이 때 converToString()함수의 인자는 배열이어야 하므로 number에 괄호를 씌어줍니다.     
  7 - Dictionary 타입에서 값을 출력할 때는 옵셔널이므로 if let 구문을 통해 출력합니다.     
         
 - addLotto 함수                  
  count = 1인 상태이므로 count += 1을 윗줄에 써서 key값을 "2회차"부터 만듭니다.
  인자인 number만큼 반복문을 통해 lottoDictionary에 값을 추가합니다. 
     
count를 굳이 전역변수로 만든 이유는 로또를 꼭 5번을 만들지 않더라도 사용자가 원하는 갯수만큼 만들어보고 싶어서 전역변수로 선언하였습니다.
 
