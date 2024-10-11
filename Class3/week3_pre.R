# 顺序
# 分支 if else
# 循环 for while
a <- 2
if( a == 1 ){
    print("hello world")
}
print("abc")

# ===========分支=============
score <- 25
if(score < 60){
    print("不及格") # cat = paste + print
    if(score<30){
        print("非常不及格")
    }
}else if( 60 <= score & score < 70 ){
    print("及格")
}else if( 70 <= score & score < 85){
    print("良好")
}else{
    print("优秀")
}


# ===========循环=============
# for while repeat
a <- 1
repeat{
    a <- a + 1
    if(a > 10){
        print("a is 10")
        break
    }
}

a <- 1
while(a <= 10){
    a <- a + 1
}
print("a is 10")

vec <- c(1:100)
res <- 0

for (v in vec){
    # print(v)
    # if(v %% 2 == 0){
    #     next
    # }
    # res <- res + v
    if(v %% 2 != 0){
        res <- res + v
    }
}
print(res)
sum(vec)

# ===========函数=============
# 提高代码复用性
# 模块化
a <- 1241
b <- 123415
c <- 12324192349

max_3 <- function(a, b, c=0) {
    
    if(a > b){
        t <- a
    }else{
        t <- b
    }
    if(t > c){
        return(t)
    }else{
        return(c)
    }
}

100+max_3(b=4567897, c=7879765, a=55765645)

# 函数的参数指定,默认参数
max_3(b=4567897, c=7879765, a=55765645)
max_3(1213, 789, 45678976)
vec <- rnorm(n=100, mean = 77, sd = 1)
max_3(vec[1]+vec[2], vec[2], vec[3])

nums <- scan(what = numeric())
print(nums)

# c(22, 34, 8921,)找出绝对值最大的那个
vec <- rnorm(10, mean = 0, sd=5)

# -5， 2， 4 -》 -5

# 参数明只在函数内部生效
max_value <- function(vec) {
    
    res <- 0
    for (a in vec) {
        if(a^2 > res^2 ){
            res = a
        }
        # print(a)
    }
    return(res)
}

abc <- rnorm(10, mean = 0, sd=5)
rm(vec)

max_value("abc")



