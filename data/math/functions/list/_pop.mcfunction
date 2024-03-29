#math:list/_pop
# 弹出最后一个元素
# 输出storage math:io result

scoreboard players operation sstemp int = list_n int
scoreboard players remove sstemp int 1
execute store result storage math:io temp int 1 run scoreboard players operation sstemp int -= list_phi int
function math:list/remove with storage math:io {}
scoreboard players remove list_n int 1
scoreboard players operation list_phi int %= list_n int