#math:list/_index_macro
# 对列表进行宏索引
# 输入<inp,int>
# 输出storage math:io result

scoreboard players operation ssloop int = inp int
scoreboard players operation ssloop int -= list_phi int
scoreboard players operation ssloop int %= list_n int
execute store result storage math:io input int 1 run scoreboard players get ssloop int
function math:list/macro_get with storage math:io {}