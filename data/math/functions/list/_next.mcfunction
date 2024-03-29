#math:list/_next
# 正向转动列表

data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players add list_phi int 1
scoreboard players operation list_phi int %= list_n int