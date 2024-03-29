#math:list/_append
# 向列表追加元素
# 输入storage math:io input

scoreboard players operation sstemp int = list_n int
execute store result storage math:io temp int 1 run scoreboard players operation sstemp int -= list_phi int
function math:list/insert with storage math:io {}
scoreboard players add list_n int 1