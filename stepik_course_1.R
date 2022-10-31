#Step 2: Variable assiment
my_var1  <- 42
my_var2  <- 35.25

my_var1 + 100
my_var1 + my_var2 - 12
my_var3  <- my_var1^2 + my_var2^2

#Step 3: Logical opperartions
my_var1 == my_var2
my_var1 != my_var2
my_var3 >= 200
my_var3 <= 200

my_new_var  <- my_var1 == my_var2


#Step 6, 7, 10, 11: Vectors
my_vector1  <- 1:67
my_vector2  <- c(-32, 45, 67, 12.78, 129, 0, -65)

my_vector2[c(1,2,3)]
my_vector2[1:3]
my_vector2[c(1,5,6,7,10)]

my_vector2 > 0
my_vector2[my_vector2 > 0]
my_vector2[my_vector2 < 0]
my_vector2[my_vector2 == 0]

my_vector1[my_vector1 > 20 & my_vector1 < 30]
my_numbers  <- my_vector1[my_vector1 > 20 & my_vector1 < 30]
positive_numbers  <- my_vector2[my_vector2 > 0]


v1  <- c(165, 178, 180, 181, 167, 178, 187, 167, 187)
mean_v1  <- mean(v1)
v1[v1 > mean_v1]
greater_than_mean  <- v1[v1 > mean_v1]


#Step 13: Lists and dataframes
age  <- c(16, 18, 22, 27)
is_maried  <- c(F, F, T, T)
name  <- c("Olga", "Maria", "Nastya", "Polina")
data = list(age, is_maried, name)
data[[1]][2]

my_data  <- data.frame(Name = name, Age = age, Status = is_maried)

-------------------------------------------------------------------------------
  # ГЛОССАРИЙ 1 УРОКА
  ?c
?"["
?"&"
?mean
?sum
?list
?data.frame
?sd
?abs
-------------------------------------------------------------------------------  
  
?read.table('file_name.file_type', header = T/F, sep = '', dec = '.',
              stringsAsFactors = TRUE)
?read.csv

my_data <- read.csv('evals.csv', stringsAsFactors = TRUE)

head(my_data, 3)
tail(my_data, 5)
View(my_data)
str(my_data)
names(my_data)
summary(my_data)

b <- my_data$score

mean(my_data$score)

summary(my_data$score)

my_data$score * 2

my_data$ten_point_scale <- my_data$score * 2

my_data$new_varible <- 0

my_data$number <- 1:nrow(my_data)

nrow(my_data)
ncol(my_data)

my_data$score[1:10]
my_data[2, 2]
my_data[1,]
my_data[,1] == my_data$score
my_data[, 2:5]

my_data$gender == 'female'
my_data[my_data$gender == 'female', 1]

subset(my_data, gender == 'female')
subset(my_data, score > mean(my_data$score))

?rbind
?cbind

my_data2 <- subset(my_data, gender == 'female')
my_data3 <- subset(my_data, gender == 'male')
my_data4 <- rbind(my_data3, my_data2)

my_data5 <- my_data[,1:10]
my_data6 <- my_data[,11:24]
my_data7 <- cbind(my_data6, my_data5)

-------------------------------------------------------------------------------
# ГЛОССАРИЙ 2 УРОКА
?read.table('file_name.file_type', header = T/F, sep = '', dec = '.',
              stringsAsFactors = TRUE)
?read.csv('file_name.file_type', stringsAsFactors = TRUE)
?head
?tail
?View # позволяет увидеть в виде таблицы 1000 наблюдений
?str # позволяет увидеть тип данных
?names # возвращает названия колонок
?summary # возвращает  минимальное, максимальное, медианное, среднее
# значения и 1, 3 квартили
?'$'
?nrow
?ncol
?subset
?rbind
?cbind
-------------------------------------------------------------------------------  
  
# if
a <- 1
if (a > 0) {
  print('a is winner')
} else {
  print('bruh')
}
if (a > 0) {
  print('a is winner')
} else if (a < 0) {
  print('a is loser')
} else
  print('bruh')

# ifelse
b <- c(-1, 1)
ifelse(b > 0, 'win', 'lose')

# for
for (i in 1:100){
  print(i)
}

for (i in 1:nrow(my_data)) {
  print(my_data$score[i])
}


# for + if
for (i in 1:nrow(my_data)) {
  if (my_data$gender[i] == 'male'){
    print(my_data$score[i])
  }
}

# for + if VS for + ifelse
my_data$quality <- rep(NA, nrow(my_data))

for (i in 1:nrow(my_data)) {
  if (my_data$score[i] > 4) {
    my_data$quality[i] <- 'good'
    print(my_data$quality[i])
  } else {
    my_data$quality[i] <- 'bad'
    print(my_data$quality[i])
  }
}

my_data$quality2 <- ifelse(my_data$score > 4, 'good', 'bad')

# while
i <- 1
while (i > 51) {
  print(my_data$score[i])
  i <- i + 1
}

# Задача на сравнение сосдних членов
good_months <- NULL
i <- 1
while (i < length(AirPassengers)){
  if (AirPassengers[i] < AirPassengers[i+1]){
    good_months <- c(good_months, AirPassengers[i+1])
  }
  i <- i + 1
}
# ИЛИ
good_months <- AirPassengers[-1][AirPassengers[-1] > 
                                   AirPassengers[-length(AirPassengers)]]

# Задача на поиск скользящего среднего (разность куммулятивных сумм)
cs = c(0, cumsum(AirPassengers[1:144]))
moving_average <- (cs[11:145] - cs[1:135]) / 10
# ИЛИ
moving_average <- numeric(135)    
last_index <- length(AirPassengers) - 9    
for (i in 1:last_index) {    
  end <- i + 9    
  moving_average[i] <- mean(AirPassengers[i:end])    
}
-------------------------------------------------------------------------------
# ГЛОССАРИЙ 3 УРОКА
?if
?ifelse
?for
?while
?cumsum
-------------------------------------------------------------------------------
  
df <- mtcars
str(df)
df$vs <- factor(df$vs, labels = c('V', 'S'))
df$am <- factor(df$am, labels = c('Auto', 'Manual'))

median(df$mpg)
mean(df$disp)
sd(df$hp)
range(df$cyl)

mean_disp <- mean(df$disp)

mean(df$mpg[df$cyl == 6])
mean(df$mpg[df$cyl == 6 & df$vs == 'V'])
sd(df$hp[df$cyl != 3 & df$am == 'Auto'])

mean_hp_vs <- aggregate(x = df$hp, by = list(df$vs), FUN = mean)
colnames(mean_hp_vs) <- c('VS', 'Mean HP')

aggregate(hp ~ vs, df, mean)

aggregate(hp ~ vs + am, df, mean)

aggregate(x = df[, -c(8,9)], by = list(df$am), FUN = median)

aggregate(df[, c(1,3)], by = list(df$am, df$vs), FUN = sd)
aggregate(cbind(mpg, disp) ~ am + vs, df, sd)

descr <- describe(x = df)
descr2 <- describeBy(x = df, group = df$vs)
descr2$V
descr2$S
descr2 <- describeBy(x = df, group = df$vs, mat = T, digits = 1)
descr3 <- describeBy(x = df, group = df$vs, mat = T, digits = 1, fast = T)
describeBy(df$qsec, group = list(df$vs, df$am), mat = T, digits = 1, fast = T)

sum(is.na(df))

df$mpg[1:10] <- NA

mean(df$mpg, na.rm = T)
aggregate(mpg ~ am, df, sd)
describe()


aq <- subset(airquality[airquality$Month %in% c(7:9), ])
result <- aggregate(Ozone ~ Month, aq, length)


describeBy(iris, iris$Species)

-------------------------------------------------------------------------------
# ГЛОССАРИЙ 4 УРОКА
?str
?factor(...$..., labels = c('...', '...'))

# функция aggregate возвращает матрицу со средним/медианным/... значением
#колонки "X" в соответствии с указанными критериями отбора "BY"
?aggregate(x = ...$..., by = list(...$...,...$...), FUN = mean/sd/length/...)

# все функции семейства DESCRIBE возвращают основные значения по заданным
#критериям (в соответствии с разбиением на группыб в виде матрицы, с округлением
#для DESCRIBEBY)
?describe(x = ...)
?describeBy(x = ...$..., group = list(...$..., ...$...), mat = T/F,
            digits = 0/1/2/..., fast = T/F)
?is.na
?na.rm
# Функция replace проверяет объект "X" на предмет условия "LIST", если оно
#оказывается TRUE, то соответствущее значение в объекте "X" заменяется на
#значения "VALUES"
?replace(x, list, values)
?%in%
-------------------------------------------------------------------------------

hist(df$mpg, breaks = 20, xlab = "MPG")
boxplot(mpg ~ am, df, ylab = 'MPG')
plot(df$mpg, df$hp)

library(ggplot2)
ggplot(df, aes(x = mpg))+
  geom_histogram(fill = 'white', col = 'black', binwidth = 2)
ggplot(df, aes(x = mpg, fill = am))+
  geom_dotplot()
ggplot(df, aes(x = mpg))+
  geom_density(fill = 'red')
ggplot(df, aes(x = mpg, fill = am))+
  geom_density(alpha = 0.5)

ggplot(df, aes(x = am, y = hp, col = vs))+
  geom_boxplot()

my_plot <- ggplot(df, aes(x = mpg, y = hp, col = vs, size = qsec))+
  geom_point()

my_plot2 <- ggplot(df, aes(x = am, y = hp, col = vs))
my_plot2 + geom_boxplot()

# Документация по ggplot2: https://ggplot2.tidyverse.org/reference/

ggplot(airquality, aes(group = Month, x = Month, y = Ozone))+
  geom_boxplot()
plot1 <- ggplot(mtcars, aes(x = mpg, y = disp, col = hp))+
  geom_point()

write.csv(df, "df.csv")
save(mean_hp_vs, file = 'mean_hp_vs.RData')

-------------------------------------------------------------------------------
# ГЛОССАРИЙ 5 УРОКА
?hist(...)
?boxplot()
?plot()
# функции модуля ggplot2
?ggplot(..., aes(x = ..., y = ..., col = ..., fill = ..., size = ...))+
  ?geom_histogram(binwidth = 1/2/3/...)
  ?geom_dotplot()
  ?geom_boxplot()
  ?geom_density(alpha = 0.1/0.11/.../1, fill = '...', col = '...')
  ?geom_point()
?write.csv(..., 'created_file_name.csv')
?save(..., file = 'created_file_name.RData')
-------------------------------------------------------------------------------


















