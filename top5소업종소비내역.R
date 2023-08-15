library(ggplot2)
#1 데이터 불러오기
setwd('C:/Users/guddk/OneDrive/Desktop')
money <- read.csv("경기도 의정부시_지역화폐 업종별 사용금액_20211121.csv")
options(scipen=999) # 지수표기를 숫자표기로 변경
## 학원
#2 데이터 추출하기
work <- subset(money, 세부업종 %in% c("보습학원", "예 체능계학원", "외국어학원"))

#3 막대그래프 그리기
ggplot(data=work, aes(x=reorder(세부업종,-카드사용액),y=카드사용액)) +
  geom_col()

## 일반휴게음식
work <- subset(money, 세부업종 %in% c("일반한식", "서양음식", "스넥"))

ggplot(data=work, aes(x=reorder(세부업종,-카드사용액),y=카드사용액)) +
  geom_col()

## 유통업 영리
work <- subset(money, 세부업종 %in% c("슈퍼마켓", "편의점", "기타유통업"))

ggplot(data=work, aes(x=reorder(세부업종,-카드사용액),y=카드사용액)) +
  geom_col()

## 음료식품
work <- subset(money, 세부업종 %in% c("정육점", "농 축 수산품", "제과점"))

ggplot(data=work, aes(x=reorder(세부업종,-카드사용액),y=카드사용액)) +
  geom_col()

## 보건위생
work <- subset(money, 세부업종 %in% c("미용원", "안경", "화장품"))

ggplot(data=work, aes(x=reorder(세부업종,-카드사용액),y=카드사용액)) +
  geom_col()

