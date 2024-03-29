#math:list/_last
# 反向转动列表

data modify storage math:io list prepend from storage math:io list[-1]
data remove storage math:io list[-1]
scoreboard players remove list_phi int 1
scoreboard players operation list_phi int %= list_n int