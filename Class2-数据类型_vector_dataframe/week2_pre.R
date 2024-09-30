bl <- TRUE
# 与就是乘法
# TRUE 1 FALSE 0
bl & FALSE
bl | FALSE
!bl

# numeric charactor logic

# ================vector usage=================
# num_vec
num_vec <- c(1, 2, 3)
num_vec <- c(1:100)
num_vec <- c(1, 2, 3:10)
# num_vec <- 1:8
num_vec <- rep(0, times=10)
num_vec <- seq(from=99, to=0, by=-1)
hist(num_vec)

length(num_vec)
num_vec <- rnorm(n=5, mean = 5, sd=1)
hist(num_vec, freq = FALSE)
num_vec[1:3]
num_vec[c(3, 2, 1)]

num_vec[c(T, F, T, T, T)]

num_vec > 5
num_vec[ num_vec > 7.5 | num_vec > 5 & num_vec <7  ]
num_vec > 7.5 | num_vec > 5 & num_vec <7 

which(num_vec > 7.5 | num_vec > 5 & num_vec <7 )

num_vec[1]
num_vec[c(2, 5)]
num_vec[num_vec > 7.5 | num_vec > 5 & num_vec <7 ]

num_vec <- c(1:5)
num_vec+1
num_vec_sub <- c(0, 1, 3, 4, 5)
num_vec > num_vec_sub
all(num_vec > num_vec_sub)
any(num_vec > num_vec_sub)
# for if else

sort(num_vec, decreasing = F)
order(num_vec)

# 正则表达式
cha_vec <- strsplit("AUI.ANIS.OCSP.UAPMM", split = '.', fixed = T) |> unlist()

cha_vec <- unlist(strsplit("AUI.ANIS.OCSP.UAPMM", split = '.', fixed = T))
cha_vec[grepl('A', cha_vec)]
cha_vec[grep('A', cha_vec)]
# ================dataframe usage=================

df <- data.frame(
    name = c("Alice", "bob", "Charlie", "David"),
    score = c(85, 92, 78, 90),
    class = c("A", "B", "A", "B")
)
# list_test <- list(
#     name = c("Alice", "bob", "Charlie", "David"),
#     score = c(85, 92, 78, 90),
#     class = c("A", "B", "A")
# )
class(df) # 大类
# typeof(df) 更底层
# dataframe 就是特殊的list
df[1, 1]
df[, 1]
grepl('a', df[, 1])

df[grepl('a', df[, 1]),]
list_test = rbind(list_test, c("whp", 99))
?rbind
cbind(df, gender=c("F", "F", "M", "M"))
# error ERROR
# warning WARNING

# ============================= case ===============================
df <- read.table("clipboard", sep='\t', header = TRUE)
df$NAME
df[, 1]
#可读性

# 不可见字符 .csv(;)  .xlsx(\t)
read.csv()
# 1.计算出成绩的平均值、中间值、方差
# 2.为所有同学的成绩做直方图、箱线图
# 3.为每个班级的同学的成绩做箱线图
# formula
boxplot(df$SCORE~df$CLASS, 
        data = df,
        col = c('red', 'blue', 'green', 'orange')
        )
vec <- c(1,2,3)
vec[1][1][1][1]
colnames(df) <- c("TITLE", "CLASS","SCORE")
# 4.选出成绩的最高分，以及Williams家族的最高分、平均分
# 5.计算出在A班中的Johnson家族的最高分、平均分

a = 1
b = 2
b == 1 # python 

# 函数的输入输出类型
df$CLASS == "A"
grepl("Johnson", df$NAME)
df$CLASS == "A" & grepl("Johnson", df$NAME)

df_johnson <- subset(df, df$CLASS == "A" & grepl("Johnson", df$NAME))
max(df_johnson$SCORE)
