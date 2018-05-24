  # Tipos de Dados em R#

# Criando Variáveis

var1 = 367
var1
sqrt(var1)

var2 = as.integer(var1)
var2

var3 = c("seg", "ter", "qua")

var3


var4 = function(x) {x+3}
var4


# Podemos também mudar o modo do dado.
var5 = as.character(var1)
var5

## Atribuindo valores a objetos
x <- c(4,5,6)
x
c(4,5,6) -> y
y
assign( "x", c(1.3, 4, -2))
?assign

## Verificando o valor em uma posição específica
x[1]

## Verificar objetos
ls()
objects()

## Remover objetos
rm(x)
x
