#math:marker_pool/_update_pure
# 更新实体池中的实体数量，不支持借实体
# 输入<inp,int>表示实体数量

# 清退借来的实体
tag @e[tag=stmp_marker,tag=!stmp_marker_temp] remove stmp_marker

# 获取实体数
execute store result score stmp_cnt int if entity @e[tag=stmp_marker]

# 如果还缺实体，循环新增实体
execute if score stmp_cnt int < inp int run function math:marker_pool/add_loop

# 如果多出实体
execute if score stmp_cnt int = inp int run return 0
scoreboard players operation ssloop int = stmp_cnt int
execute store result storage math:io temp int 1 run scoreboard players operation ssloop int -= inp int
function math:marker_pool/rmv with storage math:io {}