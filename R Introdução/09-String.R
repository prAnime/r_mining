## Strings

#String
texto <- "Isso é uma string!"
texto

x <- as.character(3.14)
x
class(x)

# concatenado Strings
nome = "Barack"; sobrenome = "Obama"
paste(nome, sobrenome)
cat(nome, sobrenome)

#Formatando a saída
sprintf("%s governa os EUA há %d anos", "Barack Obama", 8)

# Extraindo parte da string
texto <- "Isso é uma string!"
substr(texto, start = 12, stop = 17)
?substr

# Contando o número de caracteres
nchar(texto)

# Alterando a capitalização
tolower ("Histogramas e Elmentos de Dados")
toupper("Histogramas e Elementos de Dados")

# Usando stringr
library(stringr)

# Dividindo uma string em caracteres
strsplit ("Histogrmas e Elementos de Dados", NULL)
?strsplit

# Dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e Elementos de Dados", " ")

# Trabalhando com strings
sting1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", 
            "Aqui a minha string continua, mas será transformada no segundo vetor") 
sting1

string2 <- c("Precisamos testar outras strings - @???!$",
             "Análise de Dados em R")

# Adicionando 2 strings
str_c(c(sting1, string2), sep= "")
s = c(sting1, string2)
s
# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")

# Localiza a primeira e última posição em que o caracter aparece
str_locate_all(string2, "s")

# Substitui a primeira ocorrÊncia de um caracter
str_replace(string2, "\\s", "")

# Substitui todas as ocorrÊncias de um caracter
str_replace_all(string2, "\\s", "")

# Detectando padrões nas strings
string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = string1)
padrao <- "mai20"
grepl(pattern = padrao, x = string1)

# Importando arquivo txt  IMPORTANTE!!!!
#http://gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://gutenberg.org/cache/epub/100/pg100.txt")

head(arquivo)
tail(arquivo)
a <- read.csv("https://www.springfieldspringfield.co.uk/view_episode_scripts.php?tv-show=one-piece&episode=s01e01")
head(a)
tail(a)

str_count(arquivo, "7")
str_locate_all(a, "7")

# Criando funções para manipular strings
strtail <- function(s, n){
  if(n<0)
    substring(s,1-n)
  else
    substring(s,nchar(s)-n+1)
}

strtail("String de teste", 6)
 