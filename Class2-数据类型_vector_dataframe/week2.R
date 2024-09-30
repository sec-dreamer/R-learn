# ------------------vector usage -------------
# 向量的基础，就是前面的基础数据类型，numeric，character，logic
# 1.numeric类型的vec
# 2.character类型的vec
# 3.logic类型的vec
num_vec <- c(1, 2, 3)
num_vec <- c(1:100)
num_vec <- c(1, 2:100) 
num_vec <- 1:100
# 1:3 本身就是一个vector
num_vec <- rep(2, times=10)
num_vec <- seq(from=0, to=99, length.out=100) 
num_vec <- rnorm(n=100, mean = 25, sd = 1)
hist(num_vec)

length(num_vec)

sum(num_vec[1:4])
# 对vector进行读写/访问

# 下标作为索引
num_vec[1]+num_vec[2]
# 向量作为索引
mean(num_vec[1:10])
# 布尔值作为索引
num_vec <- c(1, 2, 3, 4, 5)
# 运算是整体运算，比较是整体比较！！
num_vec +1
num_vec *2
cmp_vec <- c(0,2, 3,4,1)
cmp_vec < num_vec
all()
any()


# --------------------布尔值vector怎么用
log_vec = c(T,T,T,T,T)
sum(num_vec[log_vec])
sum(num_vec[c(T,T,T,T,F)])
num_vec>2 & num_vec < 7
# --------------布尔值的 & | !

# ----------------如何写vector
# 取多少 给多少
num_vec[3:5] = c(900,901,902)

# which的本质
num_vec <- rnorm(5,mean = 5, sd = 10)
which(num_vec >= 2 & num_vec <= 7)
idx <- which(num_vec >= 2 & num_vec <= 7 | num_vec > 10)
num_vec[idx]


cha_vec <- strsplit("AUO.APN.VUXCC.ISAO",split = '.', fixed = TRUE)
print(cha_vec)
typeof(cha_vec)
cha_vec <- unlist(cha_vec)
cha_vec <- strsplit("AUO.APN.VUXCC.ISAO",split = '.', fixed = TRUE) |> unlist()
cha_vec[log_vec[1:4]]

grep("A", cha_vec)
grepl("A", cha_vec)
# 总结：
# 数字vector做筛选直接用布尔表达式，
# 字符vector用grep
# ----------------对vec排序--------------
sort(num_vec)
order(num_vec)


# ====================dataframe usage=================
df <- data.frame(
    name = c("Alice", "bob", "Charlie", "David"),
    score = c(85, 92, 78, 90),
    class = c("A", "B", "A", "B")
)
df <-  rbind(df, c("hyz", '99', 'C'))
df <-  cbind(df,age = rep(22, times=nrow(df)))

typeof(df)
class(df)
library(datasets)
df = state.x77
head(df,n = 20)
df <- read.table("clipboard", sep='\t', header = TRUE)
nrow(df)
ncol(df)
df[1,]
df[,1]
df[2,3]

# $本质仍然是vector，不要怕
df$NAME
df$CLASS
df[df$SCORE > 60]
# 1.计算出成绩的平均值、中间值、方差
# 2.为所有同学的成绩做直方图、箱线图
# 3.为每个班级的同学的成绩做箱线图
boxplot()
# 4.选出成绩的最高分，以及Williams家族的最高分、平均分
aggregate(df$SCORE~df$CLASS, data = df, max)
boxplot(SCORE ~ CLASS, data = df,
        col = c("red", "blue", "green"), # 为每个班级指定不同的颜色
        main = "Class Scores Boxplot",      # 图形标题
        xlab = "Class",                    # x轴标签
        ylab = "Score"                   # y轴标签
       ) 
# 5.计算出在A班中的Johnson家族的最高分、平均分
subset(df, df$CLASS=="A" & grepl('Johnson', df$NAME))
 a = strsplit(df$NAME, split = ' ')
a[1]
?aggregate

a = (factor(df$NAME))
print(a)
table(df$NAME)

l <- list(
    Name = c("Alice", "Bob"),
    Age = c(25, 30),
    stringsAsFactors = FALSE
)
typeof(l)
class(l)
