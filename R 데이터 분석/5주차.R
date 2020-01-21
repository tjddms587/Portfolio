# 5주차 정리
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
# 결측치 설정
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA
View(mpg)

# 결측치 설정 mpg[c(x,x,x,x,x), "hwy"] <- NA
# 결측치 확인 is.na()
# 결측치 제외 Na.ram=t

# drv별로 hwy평균이 어떻게 다른지 분석

# drv 변수 hwy 변수에 결측치가 몇개 있는지 확인
table(is.na(mpg$drv))
table(is.na(mpg$hwy))

# hwy 변수에 결측치 제외, 어떤 구동 방식의 hwy
# 평균이 높은지 ?
mpg %>% 
  filter(!is.na(mpg$hwy))