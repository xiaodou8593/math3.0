#math:list/test/find

tellraw @a "--- list find test ---"

# 把列表传输到临时对象
data modify storage math:io list set value ["a","b","a","a","c","d","a","e"]
execute store result score list_n int if data storage math:io list[]
scoreboard players set list_phi int 0

data modify storage math:io find_cmp set value "math:list/find/cmp/equal"

# 查询列表失败
tellraw @a "not found case"
data modify storage math:io input set value "f"
function math:list/_find_first
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]
function math:list/_print

# 查询列表成功
tellraw @a "found case"
data modify storage math:io result set value []
data modify storage math:io input set value "a"
function math:list/_find_first
execute if score res int matches 1 run data modify storage math:io result append from storage math:io list[0]
execute if score res int matches 1 run function math:list/test/find_loop
tellraw @a ["result: ", {"nbt":"result","storage":"math:io"}]