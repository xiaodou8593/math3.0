#math:test/sqrt
# 聊天栏调用

tellraw @a "--- sqrt test ---"

# 输入被开方数
scoreboard players set inp int 4

# 输出算数平方根
function math:_sqrt
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

# 输入被开方数
scoreboard players set inp int 40000

# 输出算数平方根
function math:_sqrt
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

# 输入被开方数
scoreboard players set inp int 400000000

# 输出算数平方根
function math:_sqrt
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]