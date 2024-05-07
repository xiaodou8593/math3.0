#math:test/random
# 聊天栏调用

tellraw @a "--- random test ---"

# 设置随机种子
scoreboard players set rand_seed int 8593

# 设置随机范围(左闭右开区间)
scoreboard players set min int 0
scoreboard players set max int 100

# 输出随机数
function math:_random
tellraw @a ["random: ", {"score":{"name":"random","objective":"int"}}]

function math:_random
tellraw @a ["random: ", {"score":{"name":"random","objective":"int"}}]

function math:_random
tellraw @a ["random: ", {"score":{"name":"random","objective":"int"}}]

function math:_random
tellraw @a ["random: ", {"score":{"name":"random","objective":"int"}}]

function math:_random
tellraw @a ["random: ", {"score":{"name":"random","objective":"int"}}]