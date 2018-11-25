women
git config --global user.email "vivekjjoseph@gmail.com"
git config --global user.name "vivekj89"

(m2 = matrix(100:111, nco1=3, byrow=T))

(m1=matrix(100:108,nrow=3))
m1  
m1[1,];m1[,-1]
#remove 
m1[m1>105&m1<108]
paste("c","D",sep="-")
paste("c",1:100, sep='')
(colnames(m1)=paste('c',1:3, sep=''))
m1
#vector to matrix
(m3=1:24)
dim(m3)= c(6,4)
m3

#access elements
m1[1:5]
m1[m1>107] = 9999
m1
rbind(m1,m1)
cbind(m1,m1)
rbind(m1,m1) ; cbind(m1,m1)
m1[1:12]
rowSums(m1)
(m1=matrix(100:111,nrow=4))
m1
#addmargin
addmargins(m1,margin=1, sum)
#addmargin
addmargins(m1,margin=1, sd)
addmargins(m1,margin=1, mean)  
addmargins(m1,c(1,2),mean)
addmargins(m1,c(1,2),list(list(mean,sum,max,min),list(var,sd,max,min)))
addmargins(m1,c(1,2),mean)
(m1sum=addmargins(m1,c(1,2),list(list(mean,sum,max,min),list(var,sd,max,min))))
round(m1sum,0)
  
#dataframe
#vector----
(rollno=1:30)
(sname=paste('agentSmith',1:30,sep=''))
(gender=sample(c('M','F'),size=30, replace=T))
(gender=sample(c('M','F'),size=30, replace=T, prob=c(.7,.3)))
table(gender)
prop.table(table(gender))
(marks1 = floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5))
(course=sample(c('BBA','MBA'),size=30,replace=T,prob=c(.5,.5)))  
rollno; sname; gender  
marks1 ; marks2; course
length(df1)
#unordered is nominal and ordered data is called ordinal
#create vectors to dataframes

(rollno = 1:30)

(sname = paste('student',1:30,sep='-'))

(course = sample(c('BBA','MBA')))

(course = sample(c('BBA','MBA'), size=30, replace=T))

(gender = sample(c('M','F'), size=30, replace=T))

(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3))) #assigning prob to male or female

marks1 = floor(rnorm(30,mean=50,sd=10))

marks1

marks2 = ceiling(rnorm(30,mean= 50,sd=10))

table(gender)

prop.table(table(gender))

rollno;course;sname;gender;marks1;marks2



#create DF

df1= data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)

df

str(df1)

head(df1)

head(df1, n=3) #top 3 rows

tail(df1) #last 6 rows

class(df1) #df

summary(df1) #summary

(df1$gender = factor(df1$gender))

df1$course = factor(df1$course)

summary(df1)


grades =sample(c('a','b,'c','d'))
