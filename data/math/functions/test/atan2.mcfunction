#math:test/atan2
# 聊天栏调用

tellraw @a "--- atan2 test ---"

# 输入平面坐标
scoreboard players set cos int 10000
scoreboard players set sin int 20000

# 输出theta角
function math:_atan2
tellraw @a ["theta: ", {"score":{"name":"theta","objective":"int"}}]