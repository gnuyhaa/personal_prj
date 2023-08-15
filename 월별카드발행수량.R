#1 데이터 불러오기
setwd('C:/Users/guddk/OneDrive/Desktop')
money <- read.csv("경기도 의정부시_지역화폐 발행 및 사용현황_20210906.csv")

library(ggplot2)
library(dplyr)

View(money)

#2 데이터 생김새 파악하기
summary(money) # 기본통계량
str(money) # 변수특성확인

#3 막대그래프
ggplot(data=money, aes(x=기준년월, y=월별.카드발행수량))+
  geom_col()
