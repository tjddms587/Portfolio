install.packages("dplyr") 
install.packages("ggplot2") 

library(dplyr)
library(ggplot2)

#데이터 전처리 예제
# 1.ggplot2 package를 설치하면 사용할 수 있는 midwest 데이터 사용
library(ggplot2)
head(midwest)

# 2.popadults는 해당 지역의 성인 인구, poptotal은 전체 인구일 때, midwest데이터에 '전체 인구대비 미성년
# 인구 백분율을 나타내는 "ratio_child"변수를 추가하시오.
dt <- midwest
dt <- dt %>% mutate(ratio_child=1-(popadults/poptotal)) %>% head

# 3. 미성년 인구 백분율이 가장 높은 상위 5개 County(지역)의 미성년 인구 백분율 출력
dt %>% select(ratio_child, county) %>% arrange(desc(ratio_child)) %>% head(5)

# 4. 분류표의 기준에 따라 미성년 비율 등급 변수 "grade"를 추가, 각 등급에 몇 개의 지역이 있는지 알아보시오.
dt <- dt %>% mutate(grade=r) 
  
# 5.'전체 인구 대비 아시아인 인구 백분율'을 변수 추가 / 하위 10개 지역의 주 state, county, ratio_asian
dt <- dt %>% mutate(ratio_asian=popasian/poptotal) %>% filter(state, county, ratio_asian) %>% arrange(ratio_asian) %>% head(10)
head(dt)