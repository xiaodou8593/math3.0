#math:list/_find_next
# 转动列表，找到下一个元素
# 输入storage math:io find_cmp表示查找规则
# 输出<res,int>表示是否继续查找

scoreboard players set sres int 0
scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 1.. run function math:list/find/next_loop with storage math:io {}
scoreboard players operation list_phi int %= list_n int
scoreboard players operation res int = sres int
execute if score res int matches 1 if score list_phi int = list_find_first int run scoreboard players set res int 0