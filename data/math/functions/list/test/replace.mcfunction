#math:list/test/replace

tellraw @a "--- list replace test ---"

# 把列表传输到临时对象
data modify storage math:io list set value ["a","b","a","a","c","d","a","e"]
execute store result score list_n int if data storage math:io list[]
scoreboard players set list_phi int 0

data modify storage math:io item_a set value "a"
data modify storage math:io item_b set value "#"

# 定义查找规则
data modify storage math:io find_cmp set value "math:list/find/cmp/equal"
data modify storage math:io input set from storage math:io item_a

# 查找第一个元素
function math:list/_find_first
execute if score res int matches 1 run data modify storage math:io list[0] set from storage math:io item_b
# 查找剩余元素
execute if score res int matches 1 run function math:list/test/replace_loop

function math:list/_print