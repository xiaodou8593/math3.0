#math:list/_insert_i
# 向列表插入元素
# 输入{storage math:io input, <inp,int>}

scoreboard players operation sstemp int = inp int
scoreboard players operation sstemp int -= list_phi int
execute if score sstemp int matches ..-1 run scoreboard players add list_phi int 1
execute store result storage math:io temp int 1 run scoreboard players operation sstemp int %= list_n int
function math:list/insert with storage math:io {}
scoreboard players add list_n int 1