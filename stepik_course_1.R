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

View(my_data) # позволяет увидеть в виде таблицы 1000 наблюдений

str(my_data) # позволяет увидеть тип данных

names(my_data) # возвращает названия колонок

summary(my_data) # возвращает  ьинимальное, максимальное, мидеанное, среднее
# значения и 1, 3 квартили

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
?View
?str
?names
?summary
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












