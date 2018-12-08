#vector

#ND with mean 80 , sd 10, 100 sales point
sales = rnorm(100, mean=80, sd=10)
sales
#trunc, round, floor, ceiling used to round
sales = trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))
#10 to 50
range(sales)
#matrix
m1 = matrix(100:123, ncol=2)
m1
colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1) = c('A', 'B')
head(m1)
tail(m1)

#DF
(sname = paste('student', 1:30, sep='-'))
(marks = trunc(runif(30, 50, 90)))
(gender = sample(c('M' , 'F'), replace=T, size=30, prob=c(.7,.3)))
?runif
df1 = data.frame(sname, marks, gender)
head(df1)

#sort based on name, mean of males and female, list of thos who have scored between 60 and 70

library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks), n(), min(marks), max(marks))

#Arrange in descending order of marks
arrange(df1, desc(marks))
select(df1, sname, marks)
df1 %>% arrange(desc(marks)) %>% select(sname, marks)
names(df1)
df1[sample(1:30, size=5),2] = NA
#5 missing value in random location in marks coloumn
sum(complete.cases(df1)) #no. of rows which have no missing data
sum(!complete.cases(df1)) #no. of rows which have missing data

df1[!complete.cases(df1),2] = mean(df1$marks, na.rm=T)
mean(df1$marks, na.rm=T)
df2 = df1[complete.cases(df1), ]  
sum(is.na(df1))  
sum(is.na(df2))

sample(1:30, size=5)
df1
df1 %>% sample_n(3)
df1 %>% sample_frac(.3)
)
df1 %>% sample_n(3)
df1 %>% sample_frac(.3)                                              
#linear regression
#logistic regression

#
df = read.csv(file.chose())