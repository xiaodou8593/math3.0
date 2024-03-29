#math:list/_index
# 对列表进行转动索引
# 输入<inp,int>

scoreboard players operation ssloop int = inp int
scoreboard players operation ssloop int -= list_phi int
scoreboard players operation ssloop int %= list_n int
scoreboard players operation sstemp int = list_n int
scoreboard players operation sstemp int /= 2 int
execute if score ssloop int > sstemp int run scoreboard players operation ssloop int -= list_n int
scoreboard players operation list_phi int += ssloop int
scoreboard players operation list_phi int %= list_n int

execute if score ssloop int matches 1.. run function math:list/loop_1
execute if score ssloop int matches ..-1 run function math:list/loop_0