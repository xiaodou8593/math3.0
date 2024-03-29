#math:list/loop_0

# 循环正向转动列表
data modify storage math:io list prepend from storage math:io list[-1]
data remove storage math:io list[-1]
scoreboard players add ssloop int 1
execute if score ssloop int matches ..-1 run function math:list/loop_0