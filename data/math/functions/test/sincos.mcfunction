#math:test/sincos
# 聊天栏调用

tellraw @a "--- sincos test ---"

# 输入theta角
scoreboard players set theta int 450000

# 输出正余弦
function math:_sincos
tellraw @a ["cos: ", {"score":{"name":"cos","objective":"int"}}]
tellraw @a ["sin: ", {"score":{"name":"sin","objective":"int"}}]