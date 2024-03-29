#math:marker_pool/_update
# 更新实体池中的实体数量
# 输入<inp,int>表示实体数量

# 清退借来的实体
tag @e[tag=stmp_marker,tag=!stmp_marker_temp] remove stmp_marker

# 计算多出或者还缺多少实体
execute store result score stmp_cnt int if entity @e[tag=stmp_marker]
scoreboard players operation ssloop int = inp int
execute store result storage math:io temp int 1 run scoreboard players operation ssloop int -= stmp_cnt int

# 如果还缺实体
execute if score ssloop int matches 1.. run function math:marker_pool/add with storage math:io {}

# 如果多出实体
execute if score ssloop int matches 0.. run return 0
execute store result storage math:io temp int 1 run scoreboard players operation ssloop int *= -1 int
function math:marker_pool/rmv with storage math:io {}