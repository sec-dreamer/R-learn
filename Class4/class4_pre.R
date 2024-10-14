# 给出了每一个公司的每一年的营收，要求：
# 求出每一个公司当年的利润，并按照利润排序
# 1.作出3个图
#   根据收入从小到大排序，画出条形图
#   根据支出从小到大排序，画出条形图
#   根据利润从小到大排序，画出条形图
# 2.给出出当年利润最高的前三名公司，亏损最多的前三名
# install.packages('readxl')
# library(readxl)

# function
# in: 表格的文件路径, 字符串类型
# out: 
    # plot
    # first3 comp
    # last3 comp
summarize_data <- function(xlsx_path) {
    
    df <- read_excel(xlsx_path, sheet = 'Sheet1')
    profits <- df$Revenues - df$Expenses
    df <- cbind(df, Profits = profits)
    # sort(c(22, 34, 12))
    # order(c(22, 34, 12))
    order(df$Profits)
    # [1] 12  2 14  4  7 13 16 18 19 20 22 15 29 11 32 30 21 28 31 23 24 27  9 17 25 33 26 10  6  8  5  3  1
    
    df[order(df$Profits),]
    
    df_by_profits <- df[order(df$Profits, decreasing = T),]
    barplot(df_by_profits$Profits, names.arg = df_by_profits$Companies, xlab = "Companies", ylab = "Profit", main = "Company Porfits")
    first_3 <- df_by_profits$Companies[c(1, 2, 3)]
    len <- nrow(df_by_profits)
    last_3 <- df_by_profits$Companies[c(len, len-1, len-2)]
    return(first_3)
    
}


fist <- summarize_data(xlsx_path = './Class4/data/companies_Income_and_Expenditure_2000.xlsx')
par(mfrow=c(2, 2))

years = c(2000:2003)
fist_3_every_year = data.frame()
for(year in years){
    xlsx_path <- paste0('./Class4/data/companies_Income_and_Expenditure_', year, '.xlsx',sep = '')
    print(xlsx_path)
    fist_3_every_year <- rbind(fist_3_every_year, summarize_data(xlsx_path = xlsx_path))

}
print(fist_3_every_year)
