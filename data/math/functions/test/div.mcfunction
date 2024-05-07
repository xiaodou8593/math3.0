#math:test/div
# 聊天栏调用

tellraw @a "--- div test ---"

# expect 2.43550

scoreboard players set res int 85934531
scoreboard players set inp int 35284112
function math:_3div
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set res int 85934531
scoreboard players set inp int 35284112
function math:_4div
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]