
# this is a variable 
# ==========================numeric=================================
str1 <- "hello world"
str2 <- "hello sky"


hist(rnorm(1:100), freq = TRUE)

a <- 10.2
11 -> b
is.double("abc")
# double -- 1.2, 0.3

a_interger <- as.integer(a)
as.double(a_interger)

hist(x = rnorm(1:100), )
#R C long
# 模运算
a <- 15
b <- 4
a %/% b

a <- 12.536
# 12.53
# 12.54

# 向下取整 
floor(a) 
# 向上取整
ceiling(a)
round(a, digits = 2)

# ==========================character=================================
str1 = "hello"
str2 = "world"
str3 = "hello world"
is.character(str)

as.character(a)

vec <- c(1:10)

typeof(vec)
class(vec)
# numeric -> (double, interger)
cat(str1, str2)
paste("Tom", "90", "男", sep = "-")
# 字符串查找
# 子串判断 正则表达式 
grepl(str1, str3)
# 字符串替换
sub("hello", "hi", str3)
name <-  "Hangping Wang"
name_set <- (strsplit(name, split = " ") |> unlist())[2] # list -> vector
typeof(name_set)


# list坑
name_set[1]
name_set[2]
stu <- list(name = c('a', 'c', 'd'))
stu$name
stu[1][1]
# data.frame(score, name)
# vec <- c(1, 'abc')
# cbind(data.frame(), vec)


#R：xlsx,csv,面向过程，dataframe->{process}->plot
#python：面向控制,数据清洗，dataframe->
sum()
sum()
# C，java
# Rust,lua