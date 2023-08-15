library(ggplot2)
#1 데이터 불러오기
setwd('C:/Users/guddk/OneDrive/Desktop')
money <- read.csv("경기도 의정부시_지역화폐 업종별 사용금액_20211121.csv")

#2 데이터 생김새 파악하기
ggplot(data = money, aes(x=reorder(업종명.대분류.,-카드사용액),y=카드사용액))+
  geom_col()

head(money)
tail(money)
nrow(money)
str(money)
summary(money)

#3 데이터 추출하기
work <- subset(money, 업종명.대분류. %in% c("일반휴게음식", "유통업 영리", "음료식품", "학원", "보건위생"))

#4 막대그래프 그리기
ggplot(data=work, aes(x=reorder(업종명.대분류.,-카드사용액),y=카드사용액)) +
  geom_col()
