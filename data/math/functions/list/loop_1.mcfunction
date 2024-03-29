#math:list/loop_1

# 循环正向转动列表
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:list/loop_1