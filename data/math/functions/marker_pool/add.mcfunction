#math:marker_pool/add

# 先借实体
$tag @e[type=marker,tag=!stmp_marker,limit=$(temp)] add stmp_marker
execute store result score stmp_cnt int if entity @e[tag=stmp_marker]

# 不够再循环新增实体
execute if score stmp_cnt int < inp int run function math:marker_pool/add_loop