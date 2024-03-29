#math:list/_pop_i
# 弹出元素
# 输入<inp,int>
# 输出storage math:io result

scoreboard players operation sstemp int = inp int
scoreboard players operation sstemp int %= list_n int
scoreboard players operation sstemp int -= list_phi int
execute if score sstemp int matches ..-1 run scoreboard players remove list_phi int 1
execute store result storage math:io temp int 1 run scoreboard players operation sstemp int %= list_n int
function math:list/remove with storage math:io {}
scoreboard players remove list_n int 1
scoreboard players operation list_phi int %= list_n int