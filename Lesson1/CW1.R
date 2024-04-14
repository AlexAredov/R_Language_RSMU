# Logical data types

t <- TRUE
f <- FALSE

#можно писать =
#не обязательно выделять строчки
#просто ставим курсор на строчку и cnrt+enter
#еслли хотим запустить сразу весь скрипт то кнопочка справа от Run
#он тупил насчет длинны с шагом 0.01 так вот это написано справа....
#
#для сложения двух векторов (любой длины) служит оператор +:
#> rep(1, 8) + 1:4
#[1] 2 3 4 5 2 3 4 5
#в случае, когда длина большего вектора не кратна длине меньшего, 
#вдобавок к результату получаем предупреждение:
#> rep(1, 10) + 1:4
#[1] 2 3 4 5 2 3 4 5 2 3
#Warning message:
#  In rep(1, 10) + 1:4 :
#  longer object length is not a multiple of shorter object length
#при желании вывод предупреждения можно подавить, например, 
#с помощью функции suppressWarnings():
#> suppressWarnings(rep(1, 10) + 1:4)
#[1] 2 3 4 5 2 3 4 5 2 3

#you can write =
#it is not necessary to highlight lines
#just put the cursor on the line and cnrt+enter

x = 4
x<10

isTen = x==10
print(isTen)

# Logical operators: <, >, <=, >=, ==, !=

# Logical operations
# Logical AND: &
A = TRUE
B = FALSE
print(A&B)

# Logical OR: |
C = A|B
print(C)

# Logical NOT: !
C = !(FALSE)
print(C)

# Example of logical construction
x = 20
A = x<50
B = x>10
print((!A)&(!B)) # по факту (x<50) & (x>10)

#Character data type
my_name = "Alex Aredov"
print(my_name)

# Operations on character data
n = "Alex"
s = "Aredov"
ns = paste(n, s) #+ не пройдет, а я думал ((
print(ns)

x = paste("Score:", 1000)
print(x)

y = paste(1,2,3,4,5,"pi",sep = ",")
print(y)

# Numeric data types
#Integer
x = 10L #префикс L указывает на целый тип числа
print(is.integer(x))

#double
y = 10
print(typeof(y))

#complex numbers
z = 1+2i
print(typeof(z))

# Data types: Inf (infinity) NaN (not a number)
print(1/0)
print(0/0)
print(sqrt(-1))
print(NaN^0)
print(0^NaN)

#missing values NA (not available)
print(NA*2)
print(NA^2)
print(NA & TRUE)
print(NA | TRUE)
na = NA
print(is.na(na))
print(typeof(na))

# is.finte() - проверка на конечный тип данных
# is.infinite() - проверка на бесконечность
# is.na() - проверка на NA
# is.nan() - проверка на NaN
# is.character() - просерка на символьный тип данных
# is.integer() - целый тип данных
# is.double() - проверка на вещественный тип данных
# is.complex() - проверка на комплексные числа

z = 10
ans = is.finite(z)
print(ans)

#Vectors = arrays!!!
z = c(1.5, 2, 3, 4)
print(z)
print(typeof(z))

z = c(1.5, 2, '3', 4)
print(z)
print(typeof(z))

x = 10
z = c(1.5, x, c(1,2,3))
print(z)

# Data type casting
#int -> double -> character
print(typeof(c(1,2,3)))
# seq() - последовательность
N <- 1:100 # последовательность от 1 до 100 с шагом 1
print(N)

M = 1.25:10
print(M)

M = seq(1.25, 100, by=0.01)
print(M)

M<-seq(1.25, 100, length=5)
print(M)

# Последовательность повторений rep()
x = rep(1,5)
print(x)

ch = rep("Ha", 5)
print(ch)

#Операции над векторами
#Умножение вектора на число и сложение с числом
x = seq(1,10,0.5)
print(x)
y = 3*x+10
print(y)

#Addition and subtraction of vectors
z = y - x
print(z)

#Addirion vectors of differnt length
z1 = c(1,2,3)
z2 = c(1,2,3,4,5,6)
print(z1+z2)

z1 = c(1,2,3,4)
z2 = c(1,2,3,4,5,6)
print(z1 + z2)

#Извлечение значений вектооров
rand = rnorm(20)
print(rand)

z = rand[4:15] #срез вектора rand
#OMG нумерация с 1?!?!?!?!?!?!? WTF?!?!?
print(z)

x = rand[10]
print(x)

rule = ((z<0)&(z>-0.7))
print(rule)

z1=z[rule]
print(z1)

#Именнованные вектора
vec = c(x = 1, y = 2, z = 3)
print(vec)
print(vec["x"])
print(names(vec))
vec1=c(1,2,3)
ans = identical(vec1, vec)
print(ans)

#Проверка принодлежности к вектору
vec = 1:8
x = 10
ans = x %in% vec
print(ans)

vec1 = c(20,4,3)
ans = vec1 %in% vec
print(ans)

ans = vec %in% vec1
print(ans)

#Привелденеи типов в векторах
vec = c(2, 0.3, 9, 10, TRUE)
print(vec)

#Умножение векторов
vec1 = 1:6
vec2 = 7:12
print(vec1*vec2)
