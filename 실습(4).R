10 <= 10 
10 > 5 
10 >= 5 

n <- 20
n %in% (c(10,20,30)) 

n <- 10 
n >=0 & n <= 100 

n <- 1000
n >= 0 | n <=100 

!(10==5) 

## 벡터와 스칼라 연산 

score <- c(10, 20) 
score + 2 
score 

score <- score + 2 
score 


## 벡터와 벡터와의 연산 

score1 <- c(100,200)    
score2 <- c(90,91)    

sum_score <- score1 + score2 
sum_score

diff <- score1 - score2 
diff 

score1 <- c(100,200,300,400)    
score2 <- c(90,91)    

sum_score <- score1 + score2
sum_score

score1 <- c(100,200,300,400,500)    
score2 <- c(90,91)    

sum_score <- score1 + score2 
sum_score


## 행렬과 스칼라와의 연산 
m1 <- matrix(c(1,2,3,4,5,6), nrow = 2) 
m1
m1 <- m1 * 10

m1

## 행렬과 행렬과의 연산 

m1 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3)
m2 <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3) 
m1
m2
m1 + m2  

 
#### 흐름제어문 (조건문)


## if

score <- 76
if ( score  >= 80 ) {
  print
}

score <- 86


## if ~ else

if(score  >= 91) {
  print("A") 
} else {
  print("B or C or D")
}


## if ~ else if

score <- 86
if ( score  >= 91 )	{  print("A") 
} else if ( score  >= 81 ) { print(" B ")  else if ( score  = 71 ) { print(" C ") 
} else if ( score  >= 61 ) { print(" D ") 
} else  { print (" F ") }


## ifelse()

score <- 85 
ifelse(score>=91,  "A",  "FALSE 일 때 수행") 

score <- 85 
ifelse(score>=91, "A",  ifelse(score>=81, "B", "C or D ") ) 



#### 흐름제어문 (반복문)


## for 문 

for ( num in (1:3) ) { 
  print(num)
}


for ( num in (1:5) ) {
  if ( num %% 2 == 0)
    print( paste( num, "짝수") )
  else 
    print( paste( num, "홀수") )
} 

#### 함수 

a <- 10 
a 

## 함수 정의 
a <- function () {
  print("testa")     
  print("testa")
}


## 함수 호출 
a()         


## 매개변수가 있는 함수  정의와 호출 
a <- function(num) {
  print(num)       

# num 매개변수에 20을 넘겨주고, 함수를 호출. 이때, 20을 매개인자라고 부름
a(20) 


# num 매개변수에 10을 넘겨주고, 함수를 호출. 이때, 10을 매개인자라고 부름 
a(10)    


a <- function(num1, num2) {
  print(paste (num1,  ' ',  num2)) 
}

 
a(10,20 )  # 매개변수에 순서대로 매핑


a(num1=10, num2=20)
a(num2=20, num1=10) 


# 리턴 데이터가 있는 함수  
calculator <- function (num1,  op , num2) {
      result <- 0
      if (op == "+") {
          result <- num1 + num2 
      }else if (op == "-") {
           result <- num1 - num2 
      }else if (op == "*") {
           result <- num1 * num2 
      }else if (op == "/") {
           result <- num1 / num2
      } 
      return (result)
}

n <- calculator(1,"+",2)
print(n) 

n <- calculator(1,"-",2)    
print(n) 

 
