#Vector generation
#First - n:m
vec1 = -10:10
vec2 = 10:0
vec2
#Second - rep()
vec_char = rep("he", 10)
print(vec_char)
vec_int = rep(0L,10)
print(vec_int)
#Third - seq()
vec3 = seq(-10,10,0.01)
vec3
#Fourth - sample() - генерация случайных последовательностей
#Последовательности без повторений
core = c(0,1)
n = 30
#replace - выбор с возвращением или нет
vec_random = sample(core,n, replace = T) #T==TRUE
vec_random

core1 = c("bla", "ha")
vec_random1 = sample(core1,n, replace = T)
vec_random1
vec_random2 = sample(1:100,n, replace = T)
vec_random2

#Functions from vectors
res = sin(1:100)
print(res)

res1 = sin(seq(-pi,pi,0.01))
print(res1)

#Length
vec_len = length((res1))
vec_len

#Индексация векторов
print(res1[10])
print(res1[10:30])
slc = res1[10]

elems = res1[-10] #выбираем все координаты вектора res1 кроме 10
elems2 = res1[-(1:5)]

#Matrix
new_vec = sample(1:100,12)
print(new_vec)

mtrx1 = matrix(new_vec,ncol=3)
print(mtrx1)

mtrx2 = matrix(new_vec,nrow=2)
print(mtrx2)

#Навигация по матрицам
mtrx2[1]
mtrx2[3]
mtrx2[1,2]
mtrx2[1,]
mtrx_row<-mtrx2[1,]
mtrx_col=mtrx2[,2]
mtrx_col2=mtrx2[,2:4]
mtrx_col2

#Размерность матриц
mtrx_dim = dim(mtrx2)
mtrx_dim

#Операции над матрицами
mtrx1 = matrix(sample(1:100,12),ncol=4)
mtrx2 = matrix(sample(1:100,12),ncol=4)

print(mtrx1)
print(mtrx2)

mtrx3 = mtrx1 + mtrx2
mtrx3

mtrx4 = mtrx1 * mtrx2
mtrx4

mtrx5 = matrix(sample(1:100,12),ncol=3)

mtrx6 = mtrx1%*%mtrx5
mtrx6

#Dataframe
N<-1000
ID <- sample(1:N,N)#client's id
age <- sample(5:100,N,replace=T) #clent's ages
sex <- sample(c("male", "female"),N,replace=T) #clent's sex
city <- sample(c("Moscow","Saint-Peterburg","Tver","Kazan",
                 "Rostov","Niznii Novgorod"),N,replace=T)
higth <- rnorm(N,175,20)
weigth <- rnorm(N,75,20)

df<-data.frame(ID=ID, 
               Age=age, 
               Sex=sex,
               City=city,
               Higth=higth,
               Weight=weigth)
df
str(df)

#Обращение к столбцам
w<-df$Weight
mean(w)

w1<-df$Weight[10:100]
w1

w2<-df$Higth[(df$Higth>150)&(df$Higth<180)]
w2

df[1:20,]

if_male<-df[df$Sex=="male",]
if_male

df_male<-df[(df$Sex=="male")&(df$City=="Moscow"),]
df_male
plot(df$Higth[1:100],df$Weight[1:100],type="p")
