# Matrizes

# Criando Matrizes

# Número de LInhas
matrix(1:6, nr = 2)
matrix(1:6, nr = 3)
matrix(1:6, nr = 6)
matrix(1:6,2)

# Nùmero de Colunas
matrix( 1:6, nc = 2)


# Help
?matrix

# Criando matrizes a partir de vetores e preenchendo a partir de linhas
meus_dados = 1:10
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T) #preencheu pela linha
matrix(meus_dados, nrow = 5)

# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr= 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]

dados<-matrix(c(1:5,43,55,52,23,46,1,1,0,1,1),ncol=3)
dados
idosos<-dados[dados[,2]>50, ] # Informações de pessoas que tenham mais de 50 anos

#Consultar posição 

which(dados[,2]>50)

#Excluindo linhas ou colunas

mat = mat[-1,]
mat = mat[-c(1,2),]
mat= mat[,-2]

# Ciando uma matriz diagonal
matriz = 1:3
diag(matriz)

# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

# Transposta da matriz
W <- matrix(c(2,4,8,12), nr= 2, ncol= 2)
W
t(W)
U <- t(W)
U

# Obtendo uma matriz inversa
solve(W)

# Determinante de matriz quadrada

det(w)

# Multiplicação de Matrizes
mat1 <- matrix(2:5, nr = 2)
mat1
mat2 <- matrix(6:9, nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

mat1%*%mat2 # multiplicação matricial

# Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(2:5, nr= 2)
x*y

# Nomendo a Matriz
mat3 <- matrix (c("Futebol", "Natação", "Campo", "Piscina"), nr= 2)
mat3
dimnames(mat3) = list(c("Linha1", "Linha2"), c("Coluna1", "Coluna2"))
mat3

# Identificando linhas e colunas no momento de crianção da Matriz
matrix(1:4, nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2"), c("Coluna 1", "Coluna 2")))

#Combinando Matrizes
mat4 <- matrix(2:5, nr =2)
mat4
mat5 <- matrix(6:9, nr = 2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)

# Desconstruindo a Matriz
c(mat4)


# Verificando as dimensões
dim(mat4)
nrow(mat4)
ncol(mat4)
length(mat4)