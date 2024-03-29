#math:list/test/else

tellraw @a "--- list else test ---"

# 把列表传输到临时对象
data modify storage math:io list set value ["a", "b", "c", "d", "e", "f"]
execute store result score list_n int if data storage math:io list[]
scoreboard players set list_phi int 0

# 测试弹出和追加
tellraw @a "pop and append"
function math:list/_pop
function math:list/_print
data modify storage math:io input set from storage math:io result
function math:list/_append
function math:list/_print

# 测试转动
tellraw @a "next and last"
function math:list/_next
function math:list/_print
function math:list/_next
function math:list/_print
function math:list/_last
function math:list/_print
function math:list/_last
function math:list/_print

# 测试下标索引和插入
tellraw @a "index and insert"
scoreboard players set inp int 0
function math:list/_index
data modify storage math:io input set value "0"
function math:list/_insert
function math:list/_print
scoreboard players set inp int 2
function math:list/_index
data modify storage math:io input set value "1"
function math:list/_insert
function math:list/_print
scoreboard players set inp int 4
function math:list/_index
data modify storage math:io input set value "2"
function math:list/_insert
function math:list/_print
scoreboard players set inp int 6
function math:list/_index
data modify storage math:io input set value "3"
function math:list/_insert
function math:list/_print

# 测试弹出和插入
tellraw @a "insert and pop"
scoreboard players set inp int 0
function math:list/_pop_i
scoreboard players set inp int 1
function math:list/_pop_i
scoreboard players set inp int 2
function math:list/_pop_i
scoreboard players set inp int 3
function math:list/_pop_i
function math:list/_print
scoreboard players set inp int 0
data modify storage math:io input set value "0"
function math:list/_insert_i
scoreboard players set inp int 2
data modify storage math:io input set value "1"
function math:list/_insert_i
scoreboard players set inp int 4
data modify storage math:io input set value "2"
function math:list/_insert_i
scoreboard players set inp int 6
data modify storage math:io input set value "3"
function math:list/_insert_i
function math:list/_print