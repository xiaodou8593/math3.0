#math:sqrt/_3self
# 3位小数精度开根号
# 输入<sqrt,int>
# 输出<sqrt,int>

scoreboard players set sstemp3 int 1
execute if score sqrt int matches ..10000 run function math:sqrt/range8
execute if score sqrt int matches 10001.. if score sstemp3 int matches 1 run function math:sqrt/range9