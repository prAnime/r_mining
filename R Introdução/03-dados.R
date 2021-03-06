# Tipos de Dados em R#

# Numeric - Todos os n�meros criados em R s�o do tipo num�rico
num = 2.5
num

num2 = 4
num2 

x = -123
x
class(x)



# Convers�o de tipos Num�ric
is.integer(num2)
y = as.integer(num2)
class(y)

x2 = 3.14
x2
y2 = as.integer(x2)
y2

as.integer('4.27')
as.integer("Joe")
as.integer('Joe')
as.integer(TRUE)

# Character
char1 = 'A'
char1
A = 1
a = 2
char2 = "bolha"
char2

# Complex
compl = 2.5 + 0i
compl
class(compl)

sqrt(-1)
sqrt( -1+0i)
sqrt(as.complex(-1))

# Logic
x = 1; y= 2
z = x>y
z
class(z)

u = TRUE; v = FALSE
u & v
u | v
!u

# Opera��es com 0
5/0
0/5

# Erro
'Joe'/5

