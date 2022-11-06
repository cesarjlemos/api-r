library(plumber)
library(randomForest)

#* @apiTitle API de classificação Iris
#* @param petal_length Comprimento da Petala
#* @param petal_width Largura da Petala
#* @param sepal_length Comprimento da Sepala
#* @param sepal_width Largura da Sepala
#* @post /clasificador

function(petal_length, petal_width, sepal_length, sepal_width){

  load(model.RData)

  test = c(sepal_length, sepal_width, petal_length, petal_width)
  test = sapply(test, as.numeric)
  test = data.frame(matrix(test, ncol = 4))

  colnames(test) = colnames(iris[,1:4])

  predict(model, test)

}
