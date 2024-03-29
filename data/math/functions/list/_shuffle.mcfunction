#math:list/_shuffle
# 对列表运行洗牌算法

scoreboard players operation inp int = list_n int
function math:marker_pool/_update

execute as @e[tag=stmp_marker] run function math:list/shuffle_get
execute as @e[tag=stmp_marker,sort=random] run data modify storage math:io list append from entity @s data.math_temp_data

scoreboard players operation inp int < marker_pool_vol int
execute if score inp int = marker_pool_vol int run function math:marker_pool/_update