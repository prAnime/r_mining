### Objetos em R

# Vetor: possui 1 dimens�o e 1 tipo de dado

vetor1 <- c(1:10)
vetor1
length(vetor1)


# Matriz: possui 2 dimens�es e 1 tipo de dado

matriz1 <- matrix(1:10, nrow =2)
matriz1 
length(matriz1)


# Array: possui 2 ou mais dimens�es e 1 tipo de dado

array1 <- array(1:5, dim =c(3,3,3))
array1
length(array1)


# Data Frames: dados de diferentes tipos
# Maneira mais f�cil de explicar data frames: � uma matriz com diferentes tipos de dados

View(iris)
length(iris)


# listas: cole��o de diferentes objetos
# Diferentes tipos de dados s�o poss�ves e comuns

lista1 <- list(a=matriz1, b =vetor1)
lista1


# Fun��es tamb�m s�o vistas como objetos em R

func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)

# Removendo objetos
objects()
rm(array1, func1)
objects()

