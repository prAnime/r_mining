### DataFrames

# Criando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

# Criando vetores
pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
nome = c("Maur�cio", "Pedro", "Aline", " Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)

# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq

# Informa��es sobre o dataframe
str(pesq) # resumo geral 
dim(pesq) # quantas linhas e colunas
length(pesq)

# Obtendo um vetor de dataframe
pesq
pesq$nome

# Extraindo um �nico valor
pesq[1,1]
pesq[3,2]

# Numero de Linhas e Colunas
nrow(pesq)
ncol(pesq)

# Primeitos elementos do dataframe
head(pesq)
head(mtcars)

# �ltimo elementos do dataframe
tail(pesq
    )
tail(mtcars)

# Data frames buil-in do R
?mtcars
mtcars

# Filtro para um subset de dados que atendem a um crit�rio
pesq[altura < 1.60, ]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq

# Dataframes Nomeados
names(pesq) <- c("Pa�s", "Nome", "Altura", "C�digo", "Olhos")
pesq

colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq

# Importando arquivos
# read.xls()- Excel
# read.mtp() - Minitab
# read.sps() - SPSS
# read.table() - Arquivos txt
# read.csv() - Arquivos csv
# read.delim() - Leitura de arquivos delimitados

?read.csv
df2 <- data.frame(read.csv(file='dframe.csv', header = TRUE, sep = ","))# informando que o separador � a v�rgula
head(df2)
summary(df2)

df2$Diabete
df2$Status

plot(df2$Admdate)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)


# Cobinando dataframes
df3 <- merge(pesq, df2)
df3
