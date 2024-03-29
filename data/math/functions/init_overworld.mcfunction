#math:init_overworld

# 加载区块
forceload add -1 -1 1 1

# 全局实体
kill @e[tag=math_marker]
summon marker 0 0 0 {Tags:["math_marker"],UUID:[I;0,0,0,0],CustomName:'"math_marker"'}
kill @e[tag=uuid_marker]
summon item 0 -67 0 {Tags:["uuid_marker"],UUID:[I;0,0,0,1],CustomName:'"uuid_marker"',NoGravity:1b,Item:{id:"minecraft:glass",Count:1b}}