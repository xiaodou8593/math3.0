#math:list/test/index

tellraw @a "--- list index test ---"

# 把列表传输到临时对象
data modify storage math:io list set value ["a", "b", "c", "d", "e", "f"]
execute store result score list_n int if data storage math:io list[]
scoreboard players set list_phi int 0

# 使用下标索引
scoreboard players set inp int -1
function math:list/_index
tellraw @a ["list_val: ", {"nbt":"list[0]","storage":"math:io"}]

scoreboard players set inp int 2
function math:list/_index
tellraw @a ["list_val: ", {"nbt":"list[0]","storage":"math:io"}]

scoreboard players set inp int 3
function math:list/_index
tellraw @a ["list_val: ", {"nbt":"list[0]","storage":"math:io"}]

scoreboard players set inp int 4
function math:list/_index
tellraw @a ["list_val: ", {"nbt":"list[0]","storage":"math:io"}]

scoreboard players set inp int 0
function math:list/_index
tellraw @a ["list_val: ", {"nbt":"list[0]","storage":"math:io"}]