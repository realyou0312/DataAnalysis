## 벡터  
students_age <- c( 11, 12, 13, 20, 15, 21 )    
students_age                                 	
class(students_age)
length(students_age)  # 벡터의 길이 확인

# 벡터 인덱싱 
students_age[1]
students_age[3]
students_age[-1]  # 1번 인덱스의 데이터만 제외하고 추출하기 

# 벡터 슬라이싱 
students_age[1:3]      
students_age[4:6]

# 벡터에 데이터 추가, 갱신   
score <- c(1,2,3)
score[1] <- 10 
score[4] <- 4 
score 

# 벡터의 데이터 타입
code <- c(1,12,"30")
class(code)
code

# 순열 생성 
data <- c(1:10)
data

data1 <- seq(1, 10)
data1

data2 <- seq(1, 10, by = 2)
data2

data3 <- rep(1, times = 5)  # 1을 다섯 번 반복 생성
data3

data4 <- rep(1:3, each = 3) # 1부터 3을 각각 세 번씩 반복 생성
data4

data5 <- rep(1:3, times = 3) 		 
data5
 

## 행렬

var1 <- c(1, 2, 3, 4, 5, 6) 

# 기본적으로 열 우선으로 값이 채워짐 
x1 <- matrix(var1, nrow = 2, ncol = 3) 
x1 
 
# var1을 이용해서 2열 행렬을 생성. 행의 개수는 자동 계산됨 
x2 <- matrix(var1, ncol = 2)
x2


x1[1, ] 
x1[, 1] 
x1[2, 2]

#행렬에 데이터 추가 
x1 
x1 <- rbind(x1, c(10, 10, 10))
x1 <- cbind(x1, c(20, 20, 20))
x1
 

## 데이터프레임
no <- c(10,20,30,40,50,60,70)
age <- c(18 , 15, 13, 12, 10, 9, 7)
gender <- c("M","M","M","M","M","F","M")    

# 데이터프레임 생성
students <- data.frame(no, age, gender)   
students

# 열의 이름과 행의 이름 확인
colnames(students) 	# 열 이름
rownames(students) 	# 행 이름

colnames(students) <- c("no", "나이", "성별") 		          # 열 이름 수정
rownames(students) <- c('A', 'B', 'C', 'D', 'E', 'F', 'G') 	# 행 이름 수정

students

colnames(students) <- c("no", "age", "gender")  
students

# 데이터프레임의 변수이름$열이름으로 특정 열에 접근하기 
students$no          
students$age           


# 열 이름으로 특정 열에 접근
# 대괄호 안에 열이름으로 특정 열에 접근하기
# 대괄호 안에 콤마(,) 를 쓴 후 열이름을 쓴다. 열이름은 “ ” 또는 ‘ ‘로 감쌈
students[ ,"no"]  
students[ ,"age"]

# 열 인덱스로 특정 열에 접근  
students[ , 1]              # 첫번째 열 데이터가 모두 출력됨
students[ , 2]              # 두번째 열 데이터가 모두 출력됨

# 행 이름으로 특정 행만 접근
students["A", ]     # A행 데이터가 출력된다. 행이름은 “ ” 또는 ‘ ‘로 감쌈


# 행 인덱스로 특정 행만 접근하는 예    
students[2, ]      # 두번째 행 데이터가 출력 

# 행 인덱스, 열 인덱스 또는 행 이름, 열 이름으로 데이터에 접근
students[3,1]          	# 변수이름[행인덱스, 열인덱스]로 작성 
students["A" ,"no"] 



## 배열
var1 <- c(1,2,3,4,5,6,7,8,9,10,11,12 )

arr1 <- array(var1, dim=c(2,2,3,1))  # 3차원 배열 생성 
arr1

 
## 리스트

v_data <- c("02-111-2222", "01022223333") 		      # 벡터
m_data <- matrix(c(21:26), nrow = 2) 			          # 행렬 
a_data <- array(c(31:36), dim = c(2, 2, 2)) 		    # 배열
d_data <- data.frame(address = c("seoul", "busan"), # 데이터프레임 
                     name = c("Lee", "Kim"), stringsAsFactors = F) 

# list(키1 = 값, 키2 = 값, …. )와 같이 키와 값 쌍으로 리스트 생성 
list_data <- list(	"홍길동", 	# name 키에 “홍길동” 값 저장
                    tel = v_data, 	# tel 키에 v_data를 값으로 저장
                   	score1 = m_data, 	# score1 키에 m_data를 값으로 저장
                    score2 = a_data, 	# score2 키에 a_data를 값으로 저장
                    friends = d_data) 	# frends 키에 d_data를 값으로 저장


## 리스트이름$키 
list_data$name    # list_data에서 name키와 쌍을 이루는 데이터

list_data$tel     # list_data에서 tel키와 쌍을 이루는 데이터 


# 리스트이름[숫자] 
list_data[1] 			# list_data에서 첫 번째 서브 리스트
  
 
