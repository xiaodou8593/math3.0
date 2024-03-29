#math:list/_find_first
# 转动列表，找到第一个元素
# 输入storage math:io find_cmp表示查找规则
# 输出<res,int>表示有没有找到

scoreboard players set sres int 0
scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 1.. run function math:list/find/loop with storage math:io {}
scoreboard players operation res int = sres int
scoreboard players operation list_phi int %= list_n int
execute if score res int matches 1 run scoreboard players operation list_find_first int = list_phi int