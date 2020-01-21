# 3주차 정리

x <- data.frame(소득=c("1,000만 원","2,000만 원","3,000만 원","4,000만 원"), 
                  성별=c("남자","남자","여자","여자"),학점=c(3.8,4.2,2.6,4.5))
x
x <- cbind(x,국적=c("대한민국","대한민국","대한민국","대한민국"))
x #c가 열이네 

# 변수 생성 및 연산
var1=c(1,2,3,4,5)

var2=c(1:6)

var3=seq(1:5)
var4=seq(1,5,by=1)
var3
var4

var1+2 # 각 열에 +2씩 더해짐.
var1
var2
var1+var2 # 배열의 열 개수가 다른경우 산수 안됨.

#문자형 변수 생성 (문자는 "" 붙여야함.)
str1="a"
str1

str2 <- "eeeext"
str2

str3 = c("a","b","c")
str3

# 함수 사용 예제
# 시험점수변수 만들고 출력
x <- data.frame(학생명단= c("학생1","학생2","학생3","학생4","학생5"),시험점수=
                      c(80,60,70,50,90))
y <- c(80,60,70,50,90)
x
y

# 전체 평균 구하기 (학생들의 전체 평균 점수)
mean(y)

# 전체 평균 변수 만들고 출력
score <- mean(y)
score

data <- data.frame(성별=c("남자","여자","남자"),연령=c(26,42,35),학점=c(3.8,4.2,2.6),연봉=c("2,700만원","4,000만원","3,500만원"))
data

#데이터 프레임 만들기
a = c(10,20,30,40)
b = c(59,59,596,49)
exam <- data.frame(a,b)
exam

mean(data$연령) # 데이터 테이블에서 연령만 뽑아내서 평균.

# 예제 : 데이터 프레임 생성 및 함수 사용
j <- data.frame(제품=c("사과","딸기","수박"),가격=c(1800,1500,3000),판매량=c(24,38,13))
j #데이터 프레임으로 출력한거임.

#과일 가격과 판매량의 평균
mean(j$가격)
mean(j$판매량)

#csv 파일 불러오기 / 만들기
W <- read.csv("C:/Users/TEMP.PC16.000.001.002/Desktop/4. score.csv")
head(W) #6개 까지
W #전부
View(W)

# 파일 만들기
one = c("동길","재건","성은")
two = c(30,40,50)
three = c(1,2,3)
data.frame(one,two,three)
four <- data.frame(one,two,three)
four

write.csv(four, file="ohama.csv") #이게 만드는 것

age=c(10,20,30)
height=c(50,50,50)
weight=c(1,2,3)

p=c("age","height","weight")
p
avg=c(mean(age),mean(height),mean(weight))
avg

wow = data.frame(p,avg)
wow

write.csv(wow, file="ssss.csv")
#파일을 엑셀로 내보내기 ??? 어떻게??

#데이터 확인 및 파악
# head, tail, View, dim, str, summary

soft <- read.csv("C:/Users/TEMP.PC16.000.001.002/Desktop/3. students.csv")
soft
View(soft)
dim(soft) # 행, 열 개수 나타냄
str(soft) # 속성들 나타냄.
summary(soft)

# 조건문 (if) 
# if는 if, if else, if else, else
x <- 5
if (x>0) { 
  print('true')
  print("hello")
} else {
  print("false")
  print("world")
}

# 짝수 홀수 판별 프로그램
if (x %% 2 == 0) {
  print("짝수")} else {
    print("홀수")
  }

# 점수가 100이하 90이상 A, 90 미만 80이상 B, 나머지 점수 c
x <- 85
if (x <= 100 & 90 <= x){
  print("A")
}else if (x >= 80){
  print("B")
}else { print("C")}

# 모범답안
myGrade <- function(){
  print("0~100사이의 점수를 입력하세요.")
  score <- as.numeric(readline())
  if (score >= 90 & score <= 100){
    grade <- "A"    
  } else if (score >= 80){
    grade <- "B"    
  } else  {
    grade <- "C"
  }
  cat("당신의 학점은",grade,"입니다.")
}

myGrade()

# 반 복 문 (for, while)

# 구구단 2단 for문
for (i in 1:9) {
  result = 2*i
  print(result)
}

# while 문
i <- 1
while (i<10) {
  result=2*i
  print(result)
  i =i+1
}

# 구구단 전체 출력

for (i in 2:9) {
  for (j in 1:9) {
    result = i*j
    print(result)
  }
}

i <- 2
while (i < 10) {
  j <- 1
  while (j < 10) {
    result = i * j
    print(result)
    j <- j+1
  }
  i <- j+1
  }