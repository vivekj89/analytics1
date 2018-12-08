#decision trees

#types - regression & classification
iris
head(iris)
data=iris
library(rpart)
library(rpart.plot)

#regression tree
#DV - Sepal.length
rtree = rpart(Sepal.Length ~ ., data = iris, method='anova')
rtree
rpart.plot(rtree, nn=T)
#classification tree
#DV - species
ctree = rpart(Species~., data = iris, method='class')
ctree
rpart.plot(ctree, cex=.8,nn=T, extra=104)
printcp(ctree)
ctreeprune1 = prune(ctree, cp=.4)
ctreeprune1
rpart.plot(ctreeprune1, cex=.8, nn=T, extra=104)
(ndata= sample_n(iris, 3))
predict(ctree,newdata=ndata, type='prob')
